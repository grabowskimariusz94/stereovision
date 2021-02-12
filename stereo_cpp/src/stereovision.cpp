//
// Created by User on 23.12.2020.
//

#include "stereovision.hpp"


cv::Mat Stereovision::read(const std::string file_name, bool is_gray) {
    cv::Mat img = (is_gray)? cv::imread(file_name, cv::IMREAD_GRAYSCALE) : cv::imread(file_name);
    if (!img.data) {
        std::cout << "Nie odnaleziono pliku!" << file_name;
        exit(1);
        return img;
    }
    return img;
}

void Stereovision::write(cv::Mat img, const std::string file_name, bool with_normalizing) {
    if(with_normalizing)
        cv::normalize(img, img, 0, 255, cv::NORM_MINMAX);
    cv::imwrite(file_name, img);

}

cv::Mat Stereovision::fold(cv::Mat imgL, cv::Mat imgR) {
    cv::Mat img(imgL.rows, imgR.cols-1, CV_8UC3);

    unsigned char* p = (unsigned char*)(img.data);
    unsigned char* pl = (unsigned char*)(imgL.data);
    unsigned char* pr = (unsigned char*)(imgR.data);

    for (int row = 0; row < img.rows; ++row) {
        for (int col = 0; col < img.cols-1; ++col) {
            if (col % 2 == 0) {
                p[img.step * row + 3 * col + 0] = pl[imgL.step * row + 3 * col + 0];
                p[img.step * row + 3 * col + 1] = pl[imgL.step * row + 3 * col + 1];
                p[img.step * row + 3 * col + 2] = pl[imgL.step * row + 3 * col + 2];
            }
            else {
                p[img.step * row + 3 * col + 0] = pr[imgR.step * row + 3 * col + 0];
                p[img.step * row + 3 * col + 1] = pr[imgR.step * row + 3 * col + 1];
                p[img.step * row + 3 * col + 2] = pr[imgR.step * row + 3 * col + 2];
            }
        }
    }
    return img;
}

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

std::vector<cv::Mat> Stereovision::unfold(cv::Mat img) {
    std::vector<cv::Mat> output;
    cv::Mat imgL(img.rows, img.cols, CV_8UC1);
    cv::Mat imgR(img.rows, img.cols, CV_8UC1);
    unsigned char* p = (unsigned char*)(img.data);
    unsigned char* pl = (unsigned char*)(imgL.data);
    unsigned char* pr = (unsigned char*)(imgR.data);
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

int Stereovision::sad(cv::Mat img_base, cv::Mat img_match, int min_y, int max_y, int min_x, int max_x, int d) {
    int sad_val = 0;

    unsigned char* pb = (unsigned char*)(img_base.data);
    unsigned char* pm = (unsigned char*)(img_match.data);

    for (int y = min_y; y <= max_y; ++y) {
        for (int x = min_x; x <= max_x; ++x) {
            int sad_int = pb[img_base.step * y + x] - pm[img_match.step * y + x + d];
            sad_val = sad_val + ((sad_int<0)? (-sad_int) : (sad_int));
        }
    }

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

std::vector<std::vector<std::vector<std::vector<int>>>> Stereovision::disp_est(std::vector<cv::Mat> imgs, uint8_t d_range, uint8_t win) {
    cv::Mat imgL = imgs[0];
    cv::Mat imgR = imgs[1];

    int h = imgL.rows;
    int w = imgL.cols;
    //////////////////////////////////////////////////////////////////////////////
    //SAD
    //////////////////////////////////////////////////////////////////////////////
    std::vector<std::vector<int>> width(w);
    std::vector<std::vector<std::vector<int>>> cl(h, width), cr(h, width);
    std::vector<std::vector<std::vector<std::vector<int>>>> c;

    for (int y = 0; y < h; ++y) {
        int min_y = (y - win < 0) ? 0 : y - win;
        int max_y = (y + win > h - 1) ? (h - 1) : y + win;
        for (int x = 0; x < w; ++x) {
            int min_x = (x - win < 0) ? 0 : x - win;
            int max_x = (x + win > w - 1) ? (w - 1) : x + win;

            int dl_min = (-d_range > -min_x) ? -d_range : -min_x;
            int dl_max = 0;
            int dr_min = 0;
            int dr_max = (d_range < w - max_x) ? d_range : (w - max_x);


            std::vector<int> sadsl(dl_max - dl_min + 1);
            std::vector<int> sadsr(dr_max - dr_min + 1);

            for (int i = dl_min; i <= dl_max; ++i) {
                sadsl[-i + dl_max] = (sad(imgL, imgR, min_y, max_y, min_x, max_x, i));
            }
            for (int i = dr_min; i <= dr_max; ++i) {
                sadsr[i - dr_min] = (sad(imgR, imgL, min_y, max_y, min_x, max_x, i));
            }
            cl[y][x] = sadsl;
            cr[y][x] = sadsr;
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

std::vector<std::vector<std::vector<std::vector<int>>>> Stereovision::cost_agregation(std::vector<std::vector<std::vector<int>>> c, int h, int w) {
    
    std::vector<std::vector<int>> width(w);
    std::vector<std::vector<std::vector<int>>> height(h, width);
    std::vector<std::vector<std::vector<std::vector<int>>>> l(4, height);

    for (int y = 0; y < h; ++y) {
        int y_b = h - y - 1;
        for (int x = 0; x < w; ++x) {
            int x_b = w - x - 1;
            int d_len = c[y][x].size();

            for (int d = 0; d < d_len; ++d) {
                //down
                if (y == 0) l[0][y][x].push_back(c[y][x][d]);
                else {
                    if (d == 0 && d_len == 1) {
                        l[0][y][x].push_back(c[y][x][d]
                            + l[0][y - 1][x][d]
                            - *std::min_element(l[0][y - 1][x].begin(), l[0][y - 1][x].end()));
                    }
                    else if (d == 0) {
                        l[0][y][x].push_back(c[y][x][d]
                            + std::min({ l[0][y - 1][x][d], l[0][y - 1][x][d + 1] + P1, *std::min_element(l[0][y - 1][x].begin(), l[0][y - 1][x].end()) + P2 })
                            - *std::min_element(l[0][y - 1][x].begin(), l[0][y - 1][x].end()));
                    }
                    else if (d == (d_len - 1)) {
                        l[0][y][x].push_back(c[y][x][d]
                            + std::min({ l[0][y - 1][x][d], l[0][y - 1][x][d - 1] + P1, *std::min_element(l[0][y - 1][x].begin(), l[0][y - 1][x].end()) + P2 })
                            - *std::min_element(l[0][y - 1][x].begin(), l[0][y - 1][x].end()));
                    }
                    else {
                        l[0][y][x].push_back(c[y][x][d]
                            + std::min({ l[0][y - 1][x][d], l[0][y - 1][x][d - 1] + P1, l[0][y - 1][x][d + 1] + P1, *std::min_element(l[0][y - 1][x].begin(), l[0][y - 1][x].end()) + P2 })
                            - *std::min_element(l[0][y - 1][x].begin(), l[0][y - 1][x].end()));
                    }
                }
                //right
                if (x == 0) l[2][y][x].push_back(c[y][x][d]);
                else {
                    int d_prev_len = c[y][x - 1].size();
                    if (d == d_prev_len) {
                        l[2][y][x].push_back(c[y][x][d]);
                    }
                    else if (d == 0 && d_prev_len == 1) {
                        l[2][y][x].push_back(c[y][x][d]
                            + l[2][y][x - 1][d]
                            - *std::min_element(l[2][y][x - 1].begin(), l[2][y][x - 1].end()));
                    }
                    else if (d == 0) {
                        l[2][y][x].push_back(c[y][x][d]
                            + std::min({ l[2][y][x - 1][d], l[2][y][x - 1][d + 1] + P1, *std::min_element(l[2][y][x - 1].begin(), l[2][y][x - 1].end()) + P2 })
                            - *std::min_element(l[2][y][x - 1].begin(), l[2][y][x - 1].end()));
                    }
                    else if (d == (d_prev_len - 1)) {
                        l[2][y][x].push_back(c[y][x][d]
                            + std::min({ l[2][y][x - 1][d], l[2][y][x - 1][d - 1] + P1, *std::min_element(l[2][y][x - 1].begin(), l[2][y][x - 1].end()) + P2 })
                            - *std::min_element(l[2][y][x - 1].begin(), l[2][y][x - 1].end()));
                    }
                    else {
                        l[2][y][x].push_back(c[y][x][d]
                            + std::min({ l[2][y][x - 1][d], l[2][y][x - 1][d - 1] + P1, l[2][y][x - 1][d + 1] + P1, *std::min_element(l[2][y][x - 1].begin(), l[2][y][x - 1].end()) + P2 })
                            - *std::min_element(l[2][y][x - 1].begin(), l[2][y][x - 1].end()));
                    }
                }
            }

            d_len = c[y_b][x_b].size();
            for (int d = 0; d < d_len; ++d) {
                // up
                if (y == 0) l[1][y_b][x_b].push_back(c[y_b][x_b][d]);
                else {
                    if (d == 0 && d_len == 1) {
                        l[1][y_b][x_b].push_back(c[y_b][x_b][d]
                            + l[1][y_b + 1][x_b][d]
                            - *std::min_element(l[1][y_b + 1][x_b].begin(), l[1][y_b + 1][x_b].end()));
                    }
                    else if (d == 0) {
                        l[1][y_b][x_b].push_back(c[y_b][x_b][d]
                            + std::min({ l[1][y_b + 1][x_b][d], l[1][y_b + 1][x_b][d + 1] + P1, *std::min_element(l[1][y_b + 1][x_b].begin(), l[1][y_b + 1][x_b].end()) + P2 })
                            - *std::min_element(l[1][y_b + 1][x_b].begin(), l[1][y_b + 1][x_b].end()));
                    }
                    else if (d == (d_len - 1)) {
                        l[1][y_b][x_b].push_back(c[y_b][x_b][d]
                            + std::min({ l[1][y_b + 1][x_b][d], l[1][y_b + 1][x_b][d - 1] + P1, *std::min_element(l[1][y_b + 1][x_b].begin(), l[1][y_b + 1][x_b].end()) + P2 })
                            - *std::min_element(l[1][y_b + 1][x_b].begin(), l[1][y_b + 1][x_b].end()));
                    }
                    else {
                        l[1][y_b][x_b].push_back(c[y_b][x_b][d]
                            + std::min({ l[1][y_b + 1][x_b][d], l[1][y_b + 1][x_b][d - 1] + P1, l[1][y_b + 1][x_b][d + 1] + P1, *std::min_element(l[1][y_b + 1][x_b].begin(), l[1][y_b + 1][x_b].end()) + P2 })
                            - *std::min_element(l[1][y_b + 1][x_b].begin(), l[1][y_b + 1][x_b].end()));
                    }
                }
                // left
                if (x == 0) l[3][y_b][x_b].push_back(c[y_b][x_b][d]);
                else {
                    int d_prev_len = c[y_b][x_b + 1].size();
                    if (d == d_prev_len) {
                        l[3][y_b][x_b].push_back(c[y_b][x_b][d]);
                    }
                    else if (d == 0 && d_prev_len == 1) {
                        l[3][y_b][x_b].push_back(c[y_b][x_b][d]
                            + l[3][y_b][x_b + 1][d]
                            - *std::min_element(l[3][y_b][x_b + 1].begin(), l[3][y_b][x_b + 1].end()));
                    }
                    else if (d == 0) {
                        l[3][y_b][x_b].push_back(c[y_b][x_b][d]
                            + std::min({ l[3][y_b][x_b + 1][d], l[3][y_b][x_b + 1][d + 1] + P1, *std::min_element(l[3][y_b][x_b + 1].begin(), l[3][y_b][x_b + 1].end()) + P2 })
                            - *std::min_element(l[3][y_b][x_b + 1].begin(), l[3][y_b][x_b + 1].end()));
                    }
                    else if (d == (d_prev_len - 1)) {
                        l[3][y_b][x_b].push_back(c[y_b][x_b][d]
                            + std::min({ l[3][y_b][x_b + 1][d], l[3][y_b][x_b + 1][d - 1] + P1, *std::min_element(l[3][y_b][x_b + 1].begin(), l[3][y_b][x_b + 1].end()) + P2 })
                            - *std::min_element(l[3][y_b][x_b + 1].begin(), l[3][y_b][x_b + 1].end()));
                    }
                    else {
                        l[3][y_b][x_b].push_back(c[y_b][x_b][d]
                            + std::min({ l[3][y_b][x_b + 1][d], l[3][y_b][x_b + 1][d - 1] + P1, l[3][y_b][x_b + 1][d + 1] + P1, *std::min_element(l[3][y_b][x_b + 1].begin(), l[3][y_b][x_b + 1].end()) + P2 })
                            - *std::min_element(l[3][y_b][x_b + 1].begin(), l[3][y_b][x_b + 1].end()));
                    }
                }
            }
        }
    }
    return l;
}

std::vector<cv::Mat> Stereovision::semi_global(std::vector<std::vector<std::vector<std::vector<int>>>> c){
    
    auto cl = c[0];
    auto cr = c[1];

    int h = c[0].size();
    int w = c[0][0].size();

    // Cost Agregation 
    auto ll = cost_agregation(cl, h, w);
    std::cout << "Half Done" << '\n';
    auto lr = cost_agregation(cr, h, w);

    cv::Mat dispL(h, w, CV_8UC1);
    cv::Mat dispR(h, w, CV_8UC1);

    unsigned char* pdl = (unsigned char*)(dispL.data);
    unsigned char* pdr = (unsigned char*)(dispR.data);

    
    for (int y = 0; y < h; ++y) {
        for (int x = 0; x < w; ++x) {
            int dl_len = cl[y][x].size();
            int dr_len = cr[y][x].size();
            std::vector<int>sl(dl_len);
            std::vector<int>sr(dr_len);
            for (int d = 0; d < dl_len; ++d) {
                sl[d] = ll[0][y][x][d] + ll[1][y][x][d] + ll[2][y][x][d] + ll[3][y][x][d];
            }
            for (int d = 0; d < dr_len; ++d) {
                sr[d] = lr[0][y][x][d] + lr[1][y][x][d] + lr[2][y][x][d] + lr[3][y][x][d];
            }
            std::vector<int>::iterator resultl = (std::min_element(sl.begin(), sl.end()));
            std::vector<int>::iterator resultr = (std::min_element(sr.begin(), sr.end()));
            pdl[dispL.step * y + x] = (unsigned char)(std::distance(sl.begin(), resultl));
            pdr[dispR.step * y + x] = (unsigned char)(std::distance(sr.begin(), resultr));
        }
    }

    std::vector<cv::Mat> disp;
    disp.push_back(dispL);
    disp.push_back(dispR);

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


void Stereovision::save_after_disp_est(std::vector<std::vector<std::vector<std::vector<int>>>> c, const std::string file_name_l, const std::string file_name_r) {
    int h = c[0].size();
    int w = c[0][0].size();
    cv::Mat dispL(h, w, CV_8UC1);
    cv::Mat dispR(h, w, CV_8UC1);

    unsigned char* pdl = (unsigned char*)(dispL.data);
    unsigned char* pdr = (unsigned char*)(dispR.data);

    for (int y = 0; y < h; ++y) {
        for (int x = 0; x < w; ++x) {
            std::vector<int>::iterator resultl = std::min_element(c[0][y][x].begin(), c[0][y][x].end());
            std::vector<int>::iterator resultr = std::min_element(c[1][y][x].begin(), c[1][y][x].end());
            pdl[dispL.step * y + x] = (unsigned char)(std::distance(c[0][y][x].begin(), resultl));
            pdr[dispR.step * y + x] = (unsigned char)(std::distance(c[1][y][x].begin(), resultr));
        }
    }
    write(dispL, file_name_l, true);
    write(dispR, file_name_r, true);
}