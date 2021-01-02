
#include "stereovision.hpp"

int main() {

    cv::Mat imgl,imgr,img,img_gray;
    std::vector<cv::Mat> unfolded, disp, checked;

    Stereovision stereo;

    
    
    std::cout << "Start" << std::endl;
    imgl = stereo.read("Qk/im0.png");
    imgr = stereo.read("Qk/im1.png");
    img = stereo.fold(imgl, imgr);
    stereo.write(img, "Qk/StereoBM/folded.ppm");
    img_gray = stereo.RGB_to_Grayscale(img);
    stereo.write(img_gray, "Qk/StereoBM/gray.pgm");
    unfolded = stereo.unfold(img_gray);
    stereo.write(unfolded[0], "Qk/StereoBM/unfoldedL.pgm");
    stereo.write(unfolded[1], "Qk/StereoBM/unfoldedR.pgm");
    
    // using Stereovision
    disp = stereo.semi_global(unfolded,64,1);
    stereo.write(disp[0], "Qk/dispL.pgm");
    stereo.write(disp[1], "Qk/dispR.pgm");
    checked = stereo.consistency_check(disp);
    stereo.write(disp[0], "Qk/dispLnorm.pgm",true);
    stereo.write(disp[1], "Qk/dispRnorm.pgm",true);
    stereo.write(checked[0], "Qk/checkL.pgm", true);
    stereo.write(checked[1], "Qk/checkR.pgm", true);
    const std::string window_name1 = "OpenCV_1";
    cv::namedWindow(window_name1, cv::WINDOW_AUTOSIZE);
    cv::imshow(window_name1, checked[0]);
    const std::string window_name2 = "OpenCV_2";
    cv::namedWindow(window_name2, cv::WINDOW_AUTOSIZE);
    cv::imshow(window_name2, checked[1]);
    cv::waitKey(0);
    

    
    // using dispBM
    /*
    cv::Mat dispBM;
    auto S = cv::StereoBM::create(64, 5);
    S->compute(unfolded[0], unfolded[1], dispBM);
    stereo.write(dispBM, "Qk/StereoBM/disp.pgm", true);
    const std::string window_name1 = "OpenCV_1";
    cv::namedWindow(window_name1, cv::WINDOW_AUTOSIZE);
    cv::imshow(window_name1, dispBM);
    cv::waitKey(0);
    */


    return 0;
}
