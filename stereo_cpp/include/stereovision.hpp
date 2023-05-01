//
// Created by Mariusz Grabowski on 23.12.2020.
//

#ifndef STEREO_CPP_STEREOVISION_HPP
#define STEREO_CPP_STEREOVISION_HPP


#include <iostream>
#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/calib3d.hpp>
#include <opencv2/core/mat.hpp>
#include <ctime>
#include <filesystem>



class Stereovision{
public:

	const uint8_t P1 = 5;
	const uint8_t P2 = 70;
	const uint8_t lambda_P1 = 0;
	const uint8_t lambda_P2 = 0;
	const uint8_t lambda = 8;

	cv::Mat read(const std::string file_name, bool is_gray=false);
	void write(cv::Mat img, const std::string file_name, bool with_normalizing=false, const uint8_t d_range = 0);
	cv::Mat rescale4ppc(cv::Mat img);
	cv::Mat RGB_to_Grayscale(cv::Mat img);
	cv::Mat fold(cv::Mat img_l, cv::Mat img_r);
	std::vector<cv::Mat> unfold_mg(cv::Mat img);
    std::vector<cv::Mat> unfold_tk(cv::Mat img);
    uint8_t sad(cv::Mat img_base, cv::Mat img_match, int min_y, int max_y, int min_x, int max_x, int d);
	uint8_t census(cv::Mat img_base, cv::Mat img_match, int y, int x, int min_y, int max_y, int min_x, int max_x, int d);
	uint8_t calcR(cv::Mat img, int  x, int y, uint8_t win);
	std::vector<std::vector<std::vector<std::vector<uint8_t>>>> disp_est(std::vector<cv::Mat> imgs, uint8_t d_range, uint8_t win); // disparity estimation 
	std::vector<std::vector<std::vector<std::vector<uint8_t>>>> cost_agregation_all(std::vector<std::vector<std::vector<uint8_t>>> c, int h, int w);
	std::vector<std::vector<std::vector<std::vector<uint8_t>>>> cost_agregation_HW(std::vector<std::vector<std::vector<uint8_t>>> c, int h, int w);
	std::vector<cv::Mat> semi_global_all(std::vector<std::vector<std::vector<std::vector<uint8_t>>>> c, const uint8_t d_range);
	std::vector<cv::Mat> semi_global_HW(std::vector<std::vector<std::vector<std::vector<uint8_t>>>> c, const uint8_t d_range);
	std::vector<cv::Mat> consistency_check(std::vector<cv::Mat> imgs);

	void save_after_disp_est(std::vector<std::vector<std::vector<std::vector<uint8_t>>>> c, const std::string file_name_l, const std::string file_name_r, bool with_normalizing, const uint8_t d_range);

private:
};

#endif //STEREO_CPP_STEREOVISION_HPP
