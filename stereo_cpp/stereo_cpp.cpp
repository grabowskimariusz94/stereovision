
// #include "stereovision.hpp"
#include "include/stereovision.hpp"


int main() {

    cv::Mat imgl,imgr,img,img_gray;
    cv::Mat imgl_gray, imgr_gray;
    std::vector<std::vector<std::vector<std::vector<uint8_t>>>> c;
    std::vector<cv::Mat> unfolded_mg, unfolded_tk, disp, checked;

    std::clock_t start;
    double duration;

    Stereovision stereo;

    
    
    std::cout << "Start" << std::endl;
    // Read and rescale images
    // TK: PATH
    imgl = stereo.read("../Qk/im0.png");
    imgl = stereo.rescale4ppc(imgl);
    imgl_gray = stereo.RGB_to_Grayscale(imgl);

    // TK: PATH
    imgr = stereo.read("../Qk/im1.png");
    imgr = stereo.rescale4ppc(imgr);
    imgr_gray = stereo.RGB_to_Grayscale(imgr);

    // Optinal low-pass filtering befor splittiong ?
    //cv::GaussianBlur(imgl,imgl,cv::Size(3,3),1);
    //cv::GaussianBlur(imgr,imgr,cv::Size(3,3),1);



    // Fold two images
    img = stereo.fold(imgl, imgr);

    // Write the folded image
    // TK: PATH
    stereo.write(img, "../Qk/folded.ppm");


    img_gray = stereo.RGB_to_Grayscale(img);
    // TK: PATH
    stereo.write(img_gray, "../Qk/gray.pgm");
    unfolded_mg = stereo.unfold_mg(img_gray);
    // TK: PATH
    stereo.write(unfolded_mg[0], "../Qk/unfoldedL_mg.pgm");
    // TK: PATH
    stereo.write(unfolded_mg[1], "../Qk/unfoldedR_mg.pgm");

    unfolded_tk = stereo.unfold_tk(img_gray);
    // TK: PATH
    stereo.write(unfolded_tk[0], "../Qk/unfoldedL_tk.pgm");
    // TK: PATH
    stereo.write(unfolded_tk[1], "../Qk/unfoldedR_tk.pgm");

    // Compare the unfolded with original one
    cv::imshow("Original L",imgl_gray);
    cv::imshow("Unfolded L MG",unfolded_mg[0]);
    cv::imshow("Unfolded L TK",unfolded_tk[0]);

    //
    cv::Mat diff_mg_tk;
    cv::absdiff(unfolded_mg[0],unfolded_tk[0],diff_mg_tk);

    //
    cv::imshow("Comparison MG vs. TK",diff_mg_tk*50);

    // using Stereovision

    /*
    start = std::clock();
    c = stereo.disp_est(unfolded, 64, 1);
    duration = (std::clock() - start) / (double)CLOCKS_PER_SEC;
    //stereo.save_after_disp_est(c, "Qk/dispSADL.pgm","Qk/dispSADR.pgm", 64);
    disp = stereo.semi_global(c);
    stereo.write(disp[0], "Qk/dispL0.pgm", true, 64);
    stereo.write(disp[1], "Qk/dispR0.pgm", true, 64);
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
