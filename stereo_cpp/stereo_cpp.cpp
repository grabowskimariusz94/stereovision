
#include "stereovision.hpp"


int main() {

    cv::Mat imgl,imgr,img,img_gray;
    std::vector<std::vector<std::vector<std::vector<int>>>> c;
    std::vector<cv::Mat> unfolded, disp, checked;

    std::clock_t start;
    double duration;

    Stereovision stereo;

    
    
    std::cout << "Start" << std::endl;
    imgl = stereo.read("Qk/im0.png");
    imgr = stereo.read("Qk/im1.png");
    img = stereo.fold(imgl, imgr);
    stereo.write(img, "Qk/folded.ppm");
    img_gray = stereo.RGB_to_Grayscale(img);
    stereo.write(img_gray, "Qk/gray.pgm");
    unfolded = stereo.unfold(img_gray);
    stereo.write(unfolded[0], "Qk/unfoldedL.pgm");
    stereo.write(unfolded[1], "Qk/unfoldedR.pgm");
    
    // using Stereovision
    start = std::clock();
    c = stereo.disp_est(unfolded, 63, 1);
    duration = (std::clock() - start) / (double)CLOCKS_PER_SEC;
    std::cout << "printf: " << duration << '\n';
    stereo.save_after_disp_est(c, "Qk/dispSADL.pgm","Qk/dispSADR.pgm");
    
    start = std::clock();
    disp = stereo.semi_global(c);
    checked = stereo.consistency_check(disp);
    duration = (std::clock() - start) / (double)CLOCKS_PER_SEC;
    std::cout << "printf: " << duration << '\n';
    stereo.write(disp[0], "Qk/dispL.pgm",true);
    stereo.write(disp[1], "Qk/dispR.pgm",true);
    stereo.write(checked[0], "Qk/checkL.pgm", true);
    stereo.write(checked[1], "Qk/checkR.pgm", true);

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
