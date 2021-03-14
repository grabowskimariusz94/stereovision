//
// Created by User on 23.12.2020.
//

#include <iostream>
#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/calib3d.hpp>
#include <opencv2/core/mat.hpp>
#include <ctime>




#ifndef STEREO_CPP_STEREOVISION_HPP
#define STEREO_CPP_STEREOVISION_HPP

class Stereovision{
public:

	const uint8_t P1 = 16;
	const uint8_t P2 = 64;

	cv::Mat read(const std::string file_name, bool is_gray=false);
	void write(cv::Mat img, const std::string file_name, bool with_normalizing=false, const uint8_t d_range = 0);
	cv::Mat RGB_to_Grayscale(cv::Mat img);
	cv::Mat fold(cv::Mat img_l, cv::Mat img_r);
	std::vector<cv::Mat> unfold(cv::Mat img);
	uint8_t sad(cv::Mat img_base, cv::Mat img_match, int min_y, int max_y, int min_x, int max_x, int d);
	uint8_t calcR(cv::Mat img, int  x, int y, uint8_t win);
	std::vector<std::vector<std::vector<std::vector<uint8_t>>>> disp_est(std::vector<cv::Mat> imgs, uint8_t d_range, uint8_t win); // disparity estimation 
	std::vector<std::vector<std::vector<std::vector<uint8_t>>>> cost_agregation(std::vector<std::vector<std::vector<uint8_t>>> c, int h, int w);
	std::vector<cv::Mat> semi_global(std::vector<std::vector<std::vector<std::vector<uint8_t>>>> c);
	std::vector<cv::Mat> consistency_check(std::vector<cv::Mat> imgs);

	void save_after_disp_est(std::vector<std::vector<std::vector<std::vector<uint8_t>>>> c, const std::string file_name_l, const std::string file_name_r, const uint8_t d_range);

private:
};

#endif //STEREO_CPP_STEREOVISION_HPP
