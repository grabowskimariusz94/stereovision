//
// Created by Mariusz Grabowski on 23.12.2020.
//

//#include "stereovision.hpp"
#include "../include/stereovision.hpp"


// --------------------------------------------------------------------------------------------------------------------
// Read the input image (greyscale or colour)

cv::Mat Stereovision::read(const std::string file_name, bool is_gray) {
    cv::Mat img = (is_gray)? cv::imread(file_name, cv::IMREAD_GRAYSCALE) : cv::imread(file_name);
    if (!img.data) {
        std::cout << "File not found !" << file_name;
        exit(1);
        return img;
    }
    return img;
}

// --------------------------------------------------------------------------------------------------------------------
// Write the image (with optional normalization for a disparity image)

void Stereovision::write(cv::Mat img, const std::string file_name, bool with_normalizing, const uint8_t d_range) {
    if (with_normalizing)
        img = img * (256 / d_range);
    cv::imwrite(file_name, img);

}

// --------------------------------------------------------------------------------------------------------------------
// Rescale the image, so the number of cols is divisible by 4

cv::Mat Stereovision::rescale4ppc(cv::Mat img) {
    int rows = img.rows;
    int cols = img.cols;

    cols = (cols/4)*4;

    cv::Mat resized_img;
    cv::resize(img, resized_img, cv::Size(cols,rows));

    return resized_img;
}

// --------------------------------------------------------------------------------------------------------------------
// Fold two images (left and right) into one

cv::Mat Stereovision::fold(cv::Mat imgL, cv::Mat imgR) {

    cv::Mat img(imgL.rows, imgR.cols, CV_8UC3);

    // Pointers to data
    unsigned char* p =  (unsigned char*)(img.data);
    unsigned char* pl = (unsigned char*)(imgL.data);
    unsigned char* pr = (unsigned char*)(imgR.data);

    for (int row = 0; row < img.rows; ++row) {
        for (int col = 0; col < img.cols; ++col) {
            // Even - left column
            if (col % 2 == 0) {
                p[img.step * row + 3 * col + 0] = pl[imgL.step * row + 3 * col + 0];
                p[img.step * row + 3 * col + 1] = pl[imgL.step * row + 3 * col + 1];
                p[img.step * row + 3 * col + 2] = pl[imgL.step * row + 3 * col + 2];
            }
            // Odd - right column
            else {
                p[img.step * row + 3 * col + 0] = pr[imgR.step * row + 3 * col + 0];
                p[img.step * row + 3 * col + 1] = pr[imgR.step * row + 3 * col + 1];
                p[img.step * row + 3 * col + 2] = pr[imgR.step * row + 3 * col + 2];
            }
        }
    }
    return img;
}

// --------------------------------------------------------------------------------------------------------------------
// Custom RGB to grayscale conversion

cv::Mat Stereovision::RGB_to_Grayscale(cv::Mat img) {
    cv::Mat gray(img.rows,img.cols,CV_8UC1);
    unsigned char* p = (unsigned char*)(img.data);
    unsigned char* pg = (unsigned char*)(gray.data);
    for (int row = 0; row < img.rows; ++row) {
        for (int col = 0; col < img.cols*3; ++col) {
            if (col % 3 == 0) {
                unsigned char b = p[img.step * row + col];
                unsigned char g = p[img.step * row + col + 1];
                unsigned char r = p[img.step * row + col + 2];
                uint16_t pre_pg;
                pre_pg = ((uint16_t)r * 77 + (uint16_t)g * 150 + (uint16_t)b * 29) / 256;
                pg[gray.step * row + col/3] = (pre_pg > 255) ? 255 : (unsigned char)(pre_pg);
            }
        }
    }
    return gray;
}

// --------------------------------------------------------------------------------------------------------------------
// Unfold the image using custom interpolation

std::vector<cv::Mat> Stereovision::unfold_mg(cv::Mat img) {

    // Output vector
    std::vector<cv::Mat> output;

    // Left and right output images
    cv::Mat imgL(img.rows, img.cols, CV_8UC1);
    cv::Mat imgR(img.rows, img.cols, CV_8UC1);

    // Pointers
    unsigned char* p  = (unsigned char*)(img.data);
    unsigned char* pl = (unsigned char*)(imgL.data);
    unsigned char* pr = (unsigned char*)(imgR.data);

    // Loop over the image (old version by MG)

    for (int row = 0; row < img.rows; ++row) {
        for (int col = 0; col < img.cols; ++col) {
            if (col % 2 == 0) {
                pl[imgL.step * row + col] = p[img.step * row + col];
                pr[imgL.step * row + col] = (col == 0) ? (p[img.step * row + col + 1] / 2) : ((p[img.step * row + col - 1]) / 2 + (p[img.step * row + col + 1]) / 2);
            }
            else {
                pl[imgL.step * row + col] = (col == img.cols-1) ? (p[img.step * row + col - 1] / 2) : ((p[img.step * row + col - 1]) / 2 + (p[img.step * row + col + 1]) / 2);
                pr[imgL.step * row + col] = p[img.step * row + col];
            }
        }
    }


    output.push_back(imgL);
    output.push_back(imgR);

    return output;
}

std::vector<cv::Mat> Stereovision::unfold_tk(cv::Mat img) {

    // Output vector
    std::vector<cv::Mat> output;

    // Left and right output images
    cv::Mat imgL(img.rows, img.cols, CV_8UC1);
    cv::Mat imgR(img.rows, img.cols, CV_8UC1);

    // Pointers
    unsigned char* p  = (unsigned char*)(img.data);
    unsigned char* pl = (unsigned char*)(imgL.data);
    unsigned char* pr = (unsigned char*)(imgR.data);


    // Loop over the image (by TK)
    // In 4ppc L0R0L1R1, L2R2L3R3
    std::vector<unsigned char> four_ppc_n(4,0);     // current pixel
    std::vector<unsigned char> four_ppc_nd(4,0);    // delayed pixel

    for (int row = 0; row < img.rows; ++row) {
        for (int col = 0; col < img.cols; col += 4) {

            // Read the data to a vector (this may slow down, but will be more clear)
            for (int k=0; k< 4; k++)
                four_ppc_n[k] = p[img.step * row + col+k];

            // If we are not at the first pixel and also not in the last line
            if ( col > 0 && col < img.cols ) {
                int col_w = col - 4;
                std::cout << col_w << std::endl;
                // Left image
                // L0
                pl[imgL.step * row + col_w+0] =  four_ppc_nd[0];
                // L1
                pl[imgL.step * row + col_w+1] =  (four_ppc_nd[0]+four_ppc_nd[2])/2;
                // L2
                pl[imgL.step * row + col_w+2] =  four_ppc_nd[2];
                // L3
                pl[imgL.step * row + col_w+3] =  (four_ppc_nd[2]+four_ppc_n[0])/2;;
                // Right image
                // R0
                pr[imgR.step * row + col_w+0] =  four_ppc_nd[1];
                // R1
                pr[imgR.step * row + col_w+1] =  (four_ppc_nd[1]+four_ppc_nd[3])/2;
                // R2
                pr[imgR.step * row + col_w+2] =  four_ppc_nd[3];
                // R3
                pr[imgR.step * row + col_w+3] =  (four_ppc_nd[3]+four_ppc_n[1])/2;;

            }
        // Last 4 columns
        // Left image
        // L0
        pl[imgL.step * row + col+0] =  four_ppc_n[0];
        // L1
        pl[imgL.step * row + col+1] =  (four_ppc_n[0]+four_ppc_n[2])/2;
        // L2
        pl[imgL.step * row + col+2] =  four_ppc_n[2];
        // L3
        pl[imgL.step * row + col+3] =  four_ppc_n[2];
        // Right image
        // R0
        pr[imgR.step * row + col+0] =  four_ppc_n[1];
        // R1
        pr[imgR.step * row + col+1] =  (four_ppc_n[1]+four_ppc_n[3])/2;
        // R2
        pr[imgR.step * row + col+2] =  four_ppc_n[3];
        // R3
        pr[imgR.step * row + col+3] =  four_ppc_n[3];


        // Copy the previous vector
        four_ppc_nd = four_ppc_n;



        }
    }

    output.push_back(imgL);
    output.push_back(imgR);

    return output;
}

uint8_t Stereovision::sad(cv::Mat img_base, cv::Mat img_match, int min_y, int max_y, int min_x, int max_x, int d) {
    int sum = 0;
    uint8_t sad_val;

    unsigned char* pb = (unsigned char*)(img_base.data);
    unsigned char* pm = (unsigned char*)(img_match.data);

    for (int y = min_y; y <= max_y; ++y) {
        for (int x = min_x; x <= max_x; ++x) {
            int sad_int = pb[img_base.step * y + x] - pm[img_match.step * y + x + d];
            sum = sum + ((sad_int<0)? (-sad_int) : (sad_int));
        }
    }
    sad_val = (sum > 255) ? 255 : sum;
    return sad_val;
}

uint8_t Stereovision::calcR(cv::Mat img, int  x, int y, uint8_t win) {
    uint8_t R = 0;
    int h = img.rows;
    int w = img.cols;
    unsigned char* pb = (unsigned char*)(img.data);
    uint8_t middle_pix = pb[img.step * y+ x];
    for (int iy = std::max(0, y - win); iy <= std::min(h-1, y + win); ++iy) {
        for (int ix = std::max(0, x - win); ix <= std::min(w-1, x + win); ++ix) {
            R += ((pb[img.step * iy + ix] < middle_pix) ? 1 : 0);
        }
    }
    return R;
}

std::vector<std::vector<std::vector<std::vector<uint8_t>>>> Stereovision::disp_est(std::vector<cv::Mat> imgs, uint8_t d_range, uint8_t win) {
    cv::Mat imgL = imgs[0];
    cv::Mat imgR = imgs[1];

    int h = imgL.rows;
    int w = imgL.cols;
    //////////////////////////////////////////////////////////////////////////////
    //SAD
    //////////////////////////////////////////////////////////////////////////////
    std::vector<std::vector<uint8_t>> width(w);
    std::vector<std::vector<std::vector<uint8_t>>> cl(h, width), cr(h, width);
    std::vector<std::vector<std::vector<std::vector<uint8_t>>>> c;

    for (int y = 0; y < h; ++y) {
        int min_y = (y - win < 0) ? 0 : (y - win);
        int max_y = (y + win > h - 1) ? (h - 1) : (y + win);
        for (int x = -1; x < w-1; ++x) { // shifted to right like in FPGA
            int min_x = (x - win < 0) ? 0 : (x - win);
            int max_x = (x + win > w - 1) ? (w - 1) : (x + win);

            int dl_min = (-(d_range - 1) > -min_x) ? (-(d_range - 1)) : (-min_x);
            int dl_max = 0;
            int dr_min = 0;
            int dr_max = ((d_range - 1) < w - max_x) ? (d_range - 1) : (w - max_x);


            std::vector<uint8_t> sadsl(dl_max - dl_min + 1);
            std::vector<uint8_t> sadsr(dr_max - dr_min + 1);

            for (int i = dl_min; i <= dl_max; ++i) {
                sadsl[-i + dl_max] = (sad(imgL, imgR, min_y, max_y, min_x, max_x, i));
            }
            for (int i = dr_min; i <= dr_max; ++i) {
                sadsr[i - dr_min] = (sad(imgR, imgL, min_y, max_y, min_x, max_x, i));
            } 
            cl[y][x+1] = sadsl; //-1 cause shifted tp right
            cr[y][x+1] = sadsr;

        }
    }
    //////////////////////////////////////////////////////////////////////////////
    //disparity estimation based on area-based non-parametric rank-transform
    /////////////////////////////////////////////////////////////////////////////
    /*
    cv::Mat RL(h, w, CV_8UC1); //area-based non-parametric rank-transform
    cv::Mat RR(h, w, CV_8UC1);

    // R Calculation
    unsigned char* pl = (unsigned char*)(RL.data);
    unsigned char* pr = (unsigned char*)(RR.data);

    for (int y = 0; y < h; ++y) {
        for (int x = 0; x < w; ++x) {
            pl[RL.step * y + x] = calcR(imgL, x, y, win);
            pr[RR.step * y + x] = calcR(imgR, x, y, win);
        }
    }

    // Cost Calculation

    for (int y = 0; y < h; ++y) {
        for (int x = 0; x < w; ++x) {
            for (int d = 0; d < d_range; ++d) {
                if (x - d >= 0) cl[y][x].push_back(std::abs(pl[RL.step * y + x] - pr[RR.step * y + x - d]));
                if (x + d < w) cr[y][x].push_back(std::abs(pr[RR.step * y + x] - pl[RL.step * y + x + d]));
            }
        }
    }
    */

    c.push_back(cl); c.push_back(cr);
    return c;
}

std::vector<std::vector<std::vector<std::vector<uint8_t>>>> Stereovision::cost_agregation(std::vector<std::vector<std::vector<uint8_t>>> c, int h, int w) {
    
    std::vector<std::vector<uint8_t>> width(w);
    std::vector<std::vector<std::vector<uint8_t>>> height(h, width);
    std::vector<std::vector<std::vector<std::vector<uint8_t>>>> l(4, height);

    for (int y = 0; y < h; ++y) {
        int y_b = h - y - 1;
        for (int x = 0; x < w; ++x) {
            int x_b = w - x - 1;
            int d_len = c[y][x].size();
            
            uint8_t min_prev_0;
            uint8_t min_prev_45;
            uint8_t min_prev_90;
            uint8_t min_prev_135;
            
            
            
            std::vector<uint8_t> prev_path_calc_0;
            for (int d = 0; d < d_len; ++d) {
                if (x < 4) {
                    switch (x % 4) {
                    case 0:
                        prev_path_calc_0.push_back(0);
                        break;
                    case 1:
                        prev_path_calc_0.push_back(uint8_t(uint16_t(0 + c[y][x - 1][d]) / 2));
                        break;
                    case 2:
                        prev_path_calc_0.push_back(uint8_t(uint16_t(0 + c[y][x - 2][d] + 2 * c[y][x - 1][d]) / 4));
                        break;
                    case 3:
                        prev_path_calc_0.push_back(uint8_t(uint16_t(0 + c[y][x - 3][d] + c[y][x - 2][d] + c[y][x - 1][d]) / 4));
                        break;
                    default:
                        prev_path_calc_0.push_back(0);
                        break;
                    }
                } 
                else {
                    switch (x % 4) {
                    case 0:
                        prev_path_calc_0.push_back(l[0][y][x - 1][d]);
                        break;
                    case 1:
                        prev_path_calc_0.push_back(uint8_t(uint16_t(l[0][y][x - 2][d] + c[y][x - 1][d]) / 2));
                        break;
                    case 2:
                        prev_path_calc_0.push_back(uint8_t(uint16_t(l[0][y][x - 3][d] + c[y][x - 2][d] + 2 * c[y][x - 1][d]) / 4));
                        break;
                    case 3:
                        prev_path_calc_0.push_back(uint8_t(uint16_t(l[0][y][x - 4][d] + c[y][x - 3][d] + c[y][x - 2][d] + c[y][x - 1][d]) / 4));
                        break;
                    default:
                        prev_path_calc_0.push_back(l[0][y][x - 1][d]);
                        break;
                    }
                }
            }
            
            if (x != 0)
                min_prev_0 = *std::min_element(prev_path_calc_0.begin(), prev_path_calc_0.end());//l[0][y][x - 1].begin(), l[0][y][x - 1].end());
            if (y != 0 && x != 0)
                min_prev_45 = *std::min_element(l[1][y - 1][x - 1].begin(), l[1][y - 1][x - 1].end());
            if (y != 0)
                min_prev_90 = *std::min_element(l[2][y - 1][x].begin(), l[2][y - 1][x].end());
            if (y != 0 && x != (w - 1))
                min_prev_135 = *std::min_element(l[3][y - 1][x + 1].begin(), l[3][y - 1][x + 1].end());

            for (int d = 0; d < d_len; ++d) {
                
                //0
                /*
                std::vector<uint16_t> data_with_penalty;
                // 0 - disp
                // 1 - disp - 1
                // 2 - disp + 1
                // 3 - disp min
                data_with_penalty.push_back(prev_path_calc_0[d]);
                data_with_penalty.push_back((d != 0) ? uint16_t(prev_path_calc_0[d - 1] + P1) : uint16_t(255 + P1));
                data_with_penalty.push_back((d != (d_len - 1)) ? uint16_t(prev_path_calc_0[d + 1] + P1) : uint16_t(255 + P1));
                data_with_penalty.push_back(uint16_t(min_prev_0 + P2));
                uint16_t l_0 = uint16_t(c[y][x][d]) + *std::min_element(data_with_penalty.begin(), data_with_penalty.end()) - uint16_t(min_prev_0);

                l[0][y][x].push_back((l_0 < 255) ? uint8_t(l_0) : 255);
               */
                if (x == 0) {
                    l[0][y][x].push_back(c[y][x][d]);
                }
                else {
                    std::vector<uint16_t> data_with_penalty;
                    // 0 - disp
                    // 1 - disp - 1
                    // 2 - disp + 1
                    // 3 - disp min
                    data_with_penalty.push_back(uint16_t(prev_path_calc_0[d]));
                    data_with_penalty.push_back((d != 0) ? uint16_t(prev_path_calc_0[d - 1] + P1) : uint16_t(255 + P1));
                    data_with_penalty.push_back((d != (d_len - 1)) ? uint16_t(prev_path_calc_0[d + 1] + P1) : uint16_t(255 + P1));
                    data_with_penalty.push_back(uint16_t(min_prev_0 + P2));
                    uint16_t l_0 = uint16_t(c[y][x][d]) + *std::min_element(data_with_penalty.begin(), data_with_penalty.end()) - uint16_t(min_prev_0);

                    l[0][y][x].push_back((l_0 < 255) ? uint8_t(l_0) : 255);
                }

                //45
                if (y == 0 || x == 0) {
                    l[1][y][x].push_back(c[y][x][d]);
                }
                else {
                    std::vector<uint16_t> data_with_penalty;
                    // 0 - disp
                    // 1 - disp - 1
                    // 2 - disp + 1
                    // 3 - disp min
                    data_with_penalty.push_back(uint16_t(l[1][y - 1][x - 1][d]));
                    data_with_penalty.push_back((d != 0) ? uint16_t(l[1][y - 1][x - 1][d - 1] + P1) : uint16_t(255 + P1));
                    data_with_penalty.push_back((d != (d_len - 1)) ? uint16_t(l[1][y - 1][x - 1][d + 1] + P1) : uint16_t(255 + P1));
                    data_with_penalty.push_back(uint16_t(min_prev_45 + P2));
                    uint16_t l_45 = uint16_t(c[y][x][d]) + *std::min_element(data_with_penalty.begin(), data_with_penalty.end()) - uint16_t(min_prev_45);

                    l[1][y][x].push_back((l_45 < 255) ? uint8_t(l_45) : 255);
                }


                //90
                if (y == 0) {
                    l[2][y][x].push_back(c[y][x][d]);
                }
                else {
                    std::vector<uint16_t> data_with_penalty;
                    // 0 - disp
                    // 1 - disp - 1
                    // 2 - disp + 1
                    // 3 - disp min
                    data_with_penalty.push_back(uint16_t(l[2][y - 1][x][d]));
                    data_with_penalty.push_back((d != 0) ? uint16_t(l[2][y - 1][x][d - 1] + P1) : uint16_t(255 + P1));
                    data_with_penalty.push_back((d != (d_len - 1)) ? uint16_t(l[2][y - 1][x][d + 1] + P1) : uint16_t(255 + P1));
                    data_with_penalty.push_back(uint16_t(min_prev_90 + P2));
                    uint16_t l_90 = uint16_t(c[y][x][d]) + *std::min_element(data_with_penalty.begin(), data_with_penalty.end()) - uint16_t(min_prev_90);

                    l[2][y][x].push_back((l_90 < 255) ? uint8_t(l_90) : 255);
                }

                //135
                if (y == 0 || x == (w - 1)) {
                    l[3][y][x].push_back(c[y][x][d]);
                }
                else {
                    std::vector<uint16_t> data_with_penalty;
                    // 0 - disp
                    // 1 - disp - 1
                    // 2 - disp + 1
                    // 3 - disp min
                    data_with_penalty.push_back(uint16_t(l[3][y - 1][x + 1][d]));
                    data_with_penalty.push_back((d != 0) ? uint16_t(l[3][y - 1][x + 1][d - 1] + P1) : uint16_t(255 + P1));
                    data_with_penalty.push_back((d != (d_len - 1)) ? uint16_t(l[3][y - 1][x + 1][d + 1] + P1) : uint16_t(255 + P1));
                    data_with_penalty.push_back(uint16_t(min_prev_135 + P2));
                    uint16_t l_135 = uint16_t(c[y][x][d]) + *std::min_element(data_with_penalty.begin(), data_with_penalty.end()) - uint16_t(min_prev_135);

                    l[3][y][x].push_back((l_135 < 255) ? uint8_t(l_135) : 255);
                }
            }
        }
    }
    return l;
}

std::vector<cv::Mat> Stereovision::semi_global(std::vector<std::vector<std::vector<std::vector<uint8_t>>>> c, const uint8_t d_range){


    auto cl = c[0];
    auto cr = c[1];

    int h = c[0].size();
    int w = c[0][0].size();

    // Cost aggregation 
    auto ll = cost_agregation(cl, h, w);
    std::cout << "Half Done" << '\n';
    auto lr = cost_agregation(cr, h, w);

    // Sum of cost aggregations
    std::vector<std::vector<uint8_t>> width(w);
    std::vector<std::vector<std::vector<uint8_t>>> sl(h, width);
    std::vector<std::vector<std::vector<uint8_t>>> sr(h, width);


    for (int y = 0; y < h; ++y) {
        for (int x = 0; x < w; ++x) {
            int dl_len = cl[y][x].size();
            int dr_len = cr[y][x].size();
            for (int d = 0; d < dl_len; ++d) {
                sl[y][x].push_back(uint8_t(uint16_t(ll[0][y][x][d] + ll[1][y][x][d] + ll[2][y][x][d] + ll[3][y][x][d]) / 4));
            }
            for (int d = 0; d < dr_len; ++d) {
                sr[y][x].push_back(uint8_t(uint16_t(lr[0][y][x][d] + lr[1][y][x][d] + lr[2][y][x][d] + lr[3][y][x][d]) / 4));
            }
        }
    }


    // Disparity computiations 
    cv::Mat dispL(h, w, CV_8UC1);
    cv::Mat dispR(h, w, CV_8UC1);
    cv::Mat dispR_simp(h, w, CV_8UC1);   // simplified (based on designated disparity from left image)
    std::vector<uint8_t> range_simp(d_range);
    std::vector<std::vector<uint8_t>> width_simp(w, range_simp);
    std::vector<std::vector<std::vector<uint8_t>>> vect_simp(h, width_simp);

    for (int y = 0; y < h; ++y) {
        for (int x = 0; x < w; ++x) {
            for (int d = 0; d < d_range; d++) {

                if (sl[y].size() <= (x + d)) {
                    vect_simp[y][x][d] = 255;
                }
                else if (sl[y][x + d].size() <= d) {
                    vect_simp[y][x][d] = 255;
                }
                else {
                    vect_simp[y][x][d] = sl[y][x + d][d];
                }
            }

            /*int d = 0;
            bool d_done = false;
            while (!d_done) {
                vect_simp[y][x][d] = sl[y][x + d][d];
                d++;
                if (sl[y].size() <= (x + d)) {
                    d_done = true;
                }
                else if (sl[y][x + d].size() <= d) {
                    d_done = true;
                }
            }*/
        }
    }

    unsigned char* pdl = (unsigned char*)(dispL.data);
    unsigned char* pdr = (unsigned char*)(dispR.data);
    unsigned char* pdr_simp = (unsigned char*)(dispR_simp.data);

    for (int y = 0; y < h; ++y) {
        for (int x = 0; x < w; ++x) {

            std::vector<uint8_t>::iterator resultl = (std::min_element(sl[y][x].begin(), sl[y][x].end()));
            std::vector<uint8_t>::iterator resultr = (std::min_element(sr[y][x].begin(), sr[y][x].end()));
            std::vector<uint8_t>::iterator resultr_simp = (std::min_element(vect_simp[y][x].begin(), vect_simp[y][x].end()));
            pdl[dispL.step * y + x] = (unsigned char)(std::distance(sl[y][x].begin(), resultl));
            pdr[dispR.step * y + x] = (unsigned char)(std::distance(sr[y][x].begin(), resultr));
            pdr_simp[dispR_simp.step * y + x] = (unsigned char)(std::distance(vect_simp[y][x].begin(), resultr_simp));

        }
    }

    std::vector<cv::Mat> disp;
    disp.push_back(dispL);
    disp.push_back(dispR);
    disp.push_back(dispR_simp);

    return disp;
}

std::vector<cv::Mat> Stereovision::consistency_check(std::vector<cv::Mat> disp) {
    std::vector<cv::Mat> checked;
    cv::Mat dispL = disp[0];
    cv::Mat dispR = disp[1];
    int h = dispL.rows;
    int w = dispL.cols;
    cv::Mat checkL(h, w, CV_8UC1);
    cv::Mat checkR(h, w, CV_8UC1);

    unsigned char* pdl = (unsigned char*)(dispL.data);
    unsigned char* pdr = (unsigned char*)(dispR.data);
    unsigned char* pcl = (unsigned char*)(checkL.data);
    unsigned char* pcr = (unsigned char*)(checkR.data);

    for (int y = 0; y < h; ++y) {
        for (int x = 0; x < w; ++x) {
            int il = x - pdl[dispL.step * y + x];
            int ir = x + pdr[dispR.step * y + x];

           if (pdl[dispL.step * y + x] == pdr[dispR.step * y + il])
                pcl[checkL.step * y + x] = pdl[dispL.step * y + x];
           else
               pcl[checkL.step * y + x] = 255;  // We are assuming that maximum disp is never reached

           if (pdr[dispR.step * y + x] == pdl[dispL.step * y + ir])
               pcr[checkR.step * y + x] = pdr[dispR.step * y + x];
           else
               pcr[checkR.step * y + x] = 255;
        }
    }

    int p = 0, q = 0, dp = 255, dq = 255;
    
    for (int y = 0; y < h; ++y) {
        for (int x = 0; x < w; ++x) {
            if (pcl[checkL.step * y + x] == 255) {
                while (dp == 255) {
                    p = p + 1;
                    if (x - p < 0)
                        break;
                    else
                        dp = pcl[checkL.step * y + x - p];
                }
                while (dq == 255) {
                    q = q + 1;
                    if (x + q >= w)
                        break;
                    else
                        dq = pcl[checkL.step * y + x + q];
                }
                pcl[checkL.step * y + x] = std::min(dp, dq);
                p = 0; q = 0;
                dp = 255; dq = 255;
            }
            if (pcr[checkR.step * y + x] == 255) {
                while (dp == 255) {
                    p = p + 1;
                    if (x - p < 0)
                        break;
                    else
                        dp = pcr[checkR.step * y + x - p];
                }
                while (dq == 255) {
                    q = q + 1;
                    if (x + q >= w)
                        break;
                    else
                        dq = pcr[checkR.step * y + x + q];
                }
                pcr[checkR.step * y + x] = std::min(dp, dq);
                p = 0; q = 0;
                dp = 255; dq = 255;
            }
        }
    }
    
    checked.push_back(checkL);
    checked.push_back(checkR);
    
    return checked;
}


void Stereovision::save_after_disp_est(std::vector<std::vector<std::vector<std::vector<uint8_t>>>> c, const std::string file_name_l, const std::string file_name_r,const uint8_t d_range) {
    int h = c[0].size();
    int w = c[0][0].size();
    cv::Mat dispL(h, w, CV_8UC1);
    cv::Mat dispR(h, w, CV_8UC1);

    unsigned char* pdl = (unsigned char*)(dispL.data);
    unsigned char* pdr = (unsigned char*)(dispR.data);

    for (int y = 0; y < h; ++y) {
        for (int x = 0; x < w; ++x) {
            std::vector<uint8_t>::iterator resultl = std::min_element(c[0][y][x].begin(), c[0][y][x].end());
            std::vector<uint8_t>::iterator resultr = std::min_element(c[1][y][x].begin(), c[1][y][x].end());
            pdl[dispL.step * y + x] = (unsigned char)(std::distance(c[0][y][x].begin(), resultl));
            pdr[dispR.step * y + x] = (unsigned char)(std::distance(c[1][y][x].begin(), resultr));
        }
    }
    write(dispL, file_name_l, true, d_range);
    write(dispR, file_name_r, true, d_range);
}