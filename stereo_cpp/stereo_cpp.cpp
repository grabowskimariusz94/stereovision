
#include "stereovision.hpp"


int main() {
    
    /*int a[5][5] = {{1, 1, 1, 1, 1}, {1,1,1,1,1},{1, 1, 0, 1, 1}, {1,1,1,1,1},{1, 1, 1, 1, 1}};
    int b[5][5] = { {0,0,0,0,0},{0,0,0,0,0},{0,0,255,0,0},{0,0,0,0,0},{1,1,1,1,1} };

    int ham_distance;
    ham_distance = 0;

    for (int j = 0; j < 5; ++j) {
        for (int i = 0; i < 5; ++i) {
            ham_distance = ((a[5 / 2][5 / 2] > a[j][i]) ^ (b[5 / 2][5 / 2] > b[j][i])) ? (ham_distance + 1) : ham_distance;
        }
    }
    ham_distance = (ham_distance > 15) ? 15 : ham_distance;
    
    std::cout << ham_distance;

    return 0;*/

    cv::Mat imgl,imgr,img,imgl_gray, imgr_gray, img_gray;
    std::vector<std::vector<std::vector<std::vector<uint8_t>>>> c;
    std::vector<cv::Mat> unfolded, disp_HW, disp_all, checked;

    std::clock_t start;
    double duration;

    Stereovision stereo;

    const uint8_t d_range = 128;
    
    std::cout << "Start" << std::endl;
   /* imgl = stereo.read("evaluation/MiddEval3/trainingQ/Vintage/im0.png");
    imgr = stereo.read("evaluation/MiddEval3/trainingQ/Vintage/im1.png");*/

    imgl = stereo.read("evaluation/training/image_2/000000_10.png");
    imgr = stereo.read("evaluation/training/image_3/000000_10.png");
    //img = stereo.fold(imgl, imgr);                            
    //stereo.write(img, "Qk/folded.ppm");
    imgl_gray = stereo.RGB_to_Grayscale(imgl);
    imgr_gray = stereo.RGB_to_Grayscale(imgr);
    //img_gray = stereo.RGB_to_Grayscale(img);
    unfolded.push_back(imgl_gray);
    unfolded.push_back(imgr_gray);

    //.write(img_gray, "Qk/gray.pgm");
    //unfolded = stereo.unfold_tk(img_gray);
    //stereo.write(unfolded[0], "Qk/unfoldedL.pgm");     
    //stereo.write(unfolded[1], "Qk/unfoldedR.pgm");
    
    // using Stereovision
    
    start = std::clock();
    c = stereo.disp_est(unfolded, d_range, 2);
    duration = (std::clock() - start) / (double)CLOCKS_PER_SEC;
    
    stereo.save_after_disp_est(c, "evaluation/training/resultL/Census.pgm", "evaluation/training/resultR/Census.pgm", false, d_range);
    //stereo.save_after_disp_est(c, "evaluation/MiddEval3/trainingQ/Motorcycle/Census_5_16_64_L.pgm", "evaluation/MiddEval3/trainingQ/Motorcycle/Census_5_16_64_R.pgm", true, d_range);
    //stereo.save_after_disp_est(c, "evaluation/MiddEval3/trainingQ/Motorcycle/SAD_L.pgm","evaluation/MiddEval3/trainingQ/Motorcycle/SAD_R.pgm", true, d_range);
    
    //auto P2 = stereo.calc_P2(unfolded);
    //disp_HW = stereo.semi_global_HW(c, 64);

    
    disp_all = stereo.semi_global_all(c, d_range);
    stereo.write(disp_all[0], "evaluation/training/resultL/Census_SGM_HW.pgm", false, d_range);
    stereo.write(disp_all[1], "evaluation/training/resultR/Census_SGM_HW.pgm", false, d_range);
    stereo.write(disp_all[2], "evaluation/training/resultL/Census_SGM_SW_3.pgm", false, d_range);
    stereo.write(disp_all[3], "evaluation/training/resultR/Census_SGM_SW_3.pgm", false, d_range);
    stereo.write(disp_all[4], "evaluation/training/resultL/Census_SGM_SW_4.pgm", false, d_range);
    stereo.write(disp_all[5], "evaluation/training/resultR/Census_SGM_SW_4.pgm", false, d_range);
    stereo.write(disp_all[6], "evaluation/training/resultL/Census_SGM_SW_8.pgm", false, d_range);
    stereo.write(disp_all[7], "evaluation/training/resultR/Census_SGM_SW_8.pgm", false, d_range);

    //std::vector<cv::Mat> disp_heat(8);

    //for (int i = 0; i < 8; i++) {
    //    cv::applyColorMap(disp_all[i] * (256 / d_range), disp_heat[i], cv::COLORMAP_JET);
    //}

    //stereo.write(disp_heat[0], "evaluation/MiddEval3/trainingQ/Motorcycle/Census_5_16_64_heat_SGM_L_HW.png", true, d_range);
    //stereo.write(disp_heat[1], "evaluation/MiddEval3/trainingQ/Motorcycle/Census_5_16_64_heat_SGM_R_HW.png", true, d_range);
    //stereo.write(disp_heat[2], "evaluation/MiddEval3/trainingQ/Motorcycle/Census_5_16_64_heat_SGM_L_SW_3.png", true, d_range);
    //stereo.write(disp_heat[3], "evaluation/MiddEval3/trainingQ/Motorcycle/Census_5_16_64_heat_SGM_R_SW_3.png", true, d_range);
    //stereo.write(disp_heat[4], "evaluation/MiddEval3/trainingQ/Motorcycle/Census_5_16_64_heat_SGM_L_SW_4.png", true, d_range);
    //stereo.write(disp_heat[5], "evaluation/MiddEval3/trainingQ/Motorcycle/Census_5_16_64_heat_SGM_R_SW_4.png", true, d_range);
    //stereo.write(disp_heat[6], "evaluation/MiddEval3/trainingQ/Motorcycle/Census_5_16_64_heat_SGM_L_SW_8.png", true, d_range);
    //stereo.write(disp_heat[7], "evaluation/MiddEval3/trainingQ/Motorcycle/Census_5_16_64_heat_SGM_R_SW_8.png", true, d_range);

    duration = (std::clock() - start) / (double)CLOCKS_PER_SEC;
    std::cout << "printf: " << duration << '\n';
    

    /*
    checked = stereo.consistency_check(disp);
    stereo.write(disp[0], "Qk/dispL.pgm",true);
    stereo.write(disp[1], "Qk/dispR.pgm",true);
    stereo.write(checked[0], "Qk/checkL.pgm", true);
    stereo.write(checked[1], "Qk/checkR.pgm", true);
    */
    cv::waitKey(0);
    
    
    // using StereoBM
    /*
    start = std::clock();

    cv::Mat dispBM;
    auto S = cv::StereoBM::create(64, 5);
    S->compute(unfolded[0], unfolded[1], dispBM);

    duration = (std::clock() - start) / (double)CLOCKS_PER_SEC;
    std::cout << "printf: " << duration << '\n';

    stereo.write(dispBM, "Qk/StereoBM/disp.pgm", true); 
    const std::string window_name1 = "OpenCV_1";
    cv::namedWindow(window_name1, cv::WINDOW_AUTOSIZE);
    cv::imshow(window_name1, dispBM);
    cv::waitKey(0);
    */

    // using StereoSGBM
    /*
    start = std::clock();

    cv::Mat dispBM;
    auto S = cv::StereoSGBM::create(0, 63, 3, P1, P2);
    S->compute(unfolded[0], unfolded[1], dispBM);
    stereo.write(dispBM, "Qk/StereoSGBM/disp.pgm", true);

    duration = (std::clock() - start) / (double)CLOCKS_PER_SEC;
    std::cout << "printf: " << duration << '\n';

    cv::waitKey(0);
    */

    // using StereoSGM
    


    return 0;
}
