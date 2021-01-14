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


#define P1 5
#define P2 70

#ifndef STEREO_CPP_STEREOVISION_HPP
#define STEREO_CPP_STEREOVISION_HPP

class Stereovision{
public:
	cv::Mat read(const std::string file_name, bool is_gray=false);
	void write(cv::Mat img, const std::string file_name, bool with_normalizing=false);
	cv::Mat RGB_to_Grayscale(cv::Mat img);
	cv::Mat fold(cv::Mat img_l, cv::Mat img_r);
	std::vector<cv::Mat> unfold(cv::Mat img);
	int sad(cv::Mat img_base, cv::Mat img_match, int min_y, int max_y, int min_x, int max_x, int d);
	uint8_t calcR(cv::Mat img, int  x, int y, uint8_t win);
	std::vector<std::vector<std::vector<std::vector<int>>>> disp_est(std::vector<cv::Mat> imgs, uint8_t d_range, uint8_t win); // disparity estimation 
	std::vector<std::vector<std::vector<std::vector<int>>>> cost_agregation(std::vector<std::vector<std::vector<int>>> c, int h, int w);
	std::vector<cv::Mat> semi_global(std::vector<std::vector<std::vector<std::vector<int>>>> c);
	std::vector<cv::Mat> consistency_check(std::vector<cv::Mat> imgs);

	void save_after_disp_est(std::vector<std::vector<std::vector<std::vector<int>>>> c, const std::string file_name_l, const std::string file_name_r);

private:
};

#endif //STEREO_CPP_STEREOVISION_HPP
