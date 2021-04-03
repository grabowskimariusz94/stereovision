# -*- coding: utf-8 -*-
"""
Created on Fri Apr 01 09:10:22 2021,

@author: Mariusz Grabowski
"""

import cv2
import numpy as np
import math
import evaluation

#####################################
### Camera Parameters Calculation ###
#####################################

criteria = (cv2.TERM_CRITERIA_EPS + cv2.TERM_CRITERIA_MAX_ITER, 30, 0.001)

objp = np.zeros((6*7,3), np.float32)
objp[:,:2] = np.mgrid[0:7,0:6].T.reshape(-1,2)

objpoints = []
imgpoints_L = []
imgpoints_R = []

for i in range(1,13):
    img_l = cv2.imread('images_left/left%02d.jpg' % i)    
    img_r = cv2.imread('images_right/right%02d.jpg' % i)  

    gray_l = cv2.cvtColor(img_l, cv2.COLOR_BGR2GRAY)               
    gray_r = cv2.cvtColor(img_r, cv2.COLOR_BGR2GRAY)               

    ret_l, corners_l = cv2.findChessboardCorners(gray_l, (7,6), None)
    ret_r, corners_r = cv2.findChessboardCorners(gray_r, (7,6), None)

    if ret_l == True & ret_r == True:
        objpoints.append(objp)

        corners2_l = cv2.cornerSubPix(gray_l,corners_l, (11,11), (-1,-1), criteria)
        corners2_r = cv2.cornerSubPix(gray_r,corners_r, (11,11), (-1,-1), criteria)

        imgpoints_L.append(corners2_l)
        imgpoints_R.append(corners2_r)

        cv2.drawChessboardCorners(img_l, (7,6), corners2_l, ret_l)
        cv2.drawChessboardCorners(img_r, (7,6), corners2_r, ret_r)
                
        cv2.imshow("Corners L",img_l)
        cv2.imshow("Corners R",img_r)


ret_L, mtx_L, dist_L, rvecs_L, tvecs_L = cv2.calibrateCamera(objpoints, imgpoints_L, gray_l.shape[::-1], None, None)
ret_R, mtx_R, dist_R, rvecs_R, tvecs_R = cv2.calibrateCamera(objpoints, imgpoints_R, gray_r.shape[::-1], None, None)
retval, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, R, T, E, F =  cv2.stereoCalibrate(objpoints,imgpoints_L,imgpoints_R,mtx_L,dist_L,mtx_R,dist_R,gray_l.shape[::-1])

R1, R2, P1, P2, Q, validPixROI1, validPixROI2 = cv2.stereoRectify(cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, gray_r.shape[::-1], R, T)

#####################################
###### Calculation with OpenCV ######
#####################################

map1_L, map2_L = cv2.initUndistortRectifyMap(cameraMatrix1, distCoeffs1, R1, P1, gray_l.shape[::-1], cv2.CV_32FC1)
map1_R, map2_R = cv2.initUndistortRectifyMap(cameraMatrix2, distCoeffs2, R2, P2, gray_l.shape[::-1], cv2.CV_16SC2)

img_l = cv2.imread('images_left/left02.jpg')
img_r = cv2.imread('images_right/right02.jpg')

dst_L = cv2.remap(img_l, map1_L, map2_L, cv2.INTER_LINEAR)
dst_R = cv2.remap(img_r, map1_R, map2_R, cv2.INTER_LINEAR)

gray_l = cv2.cvtColor(dst_L, cv2.COLOR_BGR2GRAY)
gray_r = cv2.cvtColor(dst_R, cv2.COLOR_BGR2GRAY)

#####################################
######## Hardware Prototype #########
#####################################

(Y, X ,Z) = img_l.shape
R1_inv = np.linalg.inv(R1)
R2_inv = np.linalg.inv(R2)
mapx_L = np.zeros((Y,X))
mapy_L = np.zeros((Y,X))
mapx_R = np.zeros((Y,X))
mapy_R = np.zeros((Y,X))
for v in range(Y):
   for u in range(X):
       x = (u - P1[0, 2]) / P1[0, 0]
       y = (v - P1[1, 2]) / P1[1, 1]
       [X1,Y1,W] = np.dot(R1_inv,[[x],[y],[1]])
       x1 = X1 / W
       y1 = Y1 / W
       r2 = x1**2+y1**2
       x2 = x1 * (1 + distCoeffs1[0,0] * r2 + distCoeffs1[0,1] * r2 **2 + distCoeffs1[0,4] * r2 **3) + \
            2 * distCoeffs1[0,2] * x1 * y1 + distCoeffs1[0,3] * (r2 + 2 * x1 ** 2)
       y2 = y1 * (1 + distCoeffs1[0,0] * r2 + distCoeffs1[0,1] * r2 **2 + distCoeffs1[0,4] * r2 **3) + \
            2 * distCoeffs1[0,3] * x1 * y1 + distCoeffs1[0,2] * (r2 + 2 * y1 ** 2)
       mapx_L[v, u] = cameraMatrix1[0, 0] * x2 + cameraMatrix1[0, 2]
       mapy_L[v, u] = cameraMatrix1[1, 1] * y2 + cameraMatrix1[1, 2]
for v in range(Y):
   for u in range(X):
       x = (u - P2[0, 2]) / P2[0, 0]
       y = (v - P2[1, 2]) / P2[1, 1]
       [X1, Y1, W] = np.dot(R2_inv, [[x], [y], [1]])
       x1 = X1 / W
       y1 = Y1 / W
       r2 = x1 ** 2 + y1 ** 2
       x2 = x1 * (1 + distCoeffs2[0, 0] * r2 + distCoeffs2[0, 1] * r2 ** 2 + distCoeffs2[0, 4] * r2 ** 3) + \
            2 * distCoeffs2[0, 2] * x1 * y1 + distCoeffs2[0, 3] * (r2 + 2 * x1 ** 2)
       y2 = y1 * (1 + distCoeffs2[0, 0] * r2 + distCoeffs2[0, 1] * r2 ** 2 + distCoeffs2[0, 4] * r2 ** 3) + \
            2 * distCoeffs2[0, 3] * x1 * y1 + distCoeffs2[0, 2] * (r2 + 2 * y1 ** 2)
       mapx_R[v, u] = cameraMatrix2[0, 0] * x2 + cameraMatrix2[0, 2]
       mapy_R[v, u] = cameraMatrix2[1, 1] * y2 + cameraMatrix2[1, 2]

dst_L2 = np.zeros((Y,X),"uint8")
dst_R2 = np.zeros((Y,X),"uint8")
gray_L = cv2.cvtColor(img_l, cv2.COLOR_BGR2GRAY)
gray_R = cv2.cvtColor(img_r, cv2.COLOR_BGR2GRAY)

for j in range(Y):
    for i in range(X):
        y0 = math.floor(mapy_L[j,i])
        x0 = math.floor(mapx_L[j,i])
        y = mapy_L[j,i]
        x = mapx_L[j,i]
        dx1 = x - x0
        dx2 = 1 - dx1
        dy1 = y - y0
        dy2 = 1 - dy1
        p00 = gray_L[y0, x0]
        p01 = gray_L[y0, min(x0 + 1, X - 1)]
        p10 = gray_L[min(y0 + 1, Y - 1), x0]
        p11 = gray_L[min(y0 + 1, Y - 1), min(x0 + 1, X - 1)]
        p0x = p00 * dx2 + p01 * dx1
        p1x = p10 * dx2 + p11 * dx1
        dst_L2[j,i] = p0x * dy2 + p1x * dy1
for j in range(Y):
    for i in range(X):
        y0 = math.floor(mapy_R[j,i])
        x0 = math.floor(mapx_R[j,i])
        y = mapy_R[j,i]
        x = mapx_R[j,i]
        dx1 = x - x0
        dx2 = 1 - dx1
        dy1 = y - y0
        dy2 = 1 - dy1
        p00 = gray_R[y0, x0]
        p01 = gray_R[y0, min(x0 + 1, X - 1)]
        p10 = gray_R[min(y0 + 1, Y - 1), x0]
        p11 = gray_R[min(y0 + 1, Y - 1), min(x0 + 1, X - 1)]
        p0x = p00 * dx2 + p01 * dx1
        p1x = p10 * dx2 + p11 * dx1
        dst_R2[j,i] = p0x * dy2 + p1x * dy1

#####################################
############# Results ###############
#####################################

evaluation.evaluation(gray_l,gray_r,dst_L2,dst_R2)

cv2.imwrite('images_out/opencv_L.pgm', gray_l)
cv2.imwrite('images_out/opencv_R.pgm', gray_r)
cv2.imwrite('images_out/dst_L.pgm', dst_L2)
cv2.imwrite('images_out/dst_R.pgm', dst_R2)


N, XX, YY = dst_L.shape[::-1]

visRectify = np.zeros((YY,XX*2,N),np.uint8)
visRectify[:,0:640:,:] = dst_L
visRectify[:,640:1280:,:] = dst_R

visRectify2 = np.zeros((YY,XX*2),np.uint8)
visRectify2[:,0:640:] = dst_L2
visRectify2[:,640:1280:] = dst_R2

for y in range(0,480,10):
    cv2.line(visRectify, (0, y), (1280, y), (255, 0, 0))
    cv2.line(visRectify2, (0, y), (1280, y), (255, 0, 0))

cv2.imshow('visRectify',visRectify)
cv2.imshow('visRectify2',visRectify2)

cv2.waitKey(0)



