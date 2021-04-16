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
    #img_l = cv2.resize(img_l, (4096,2160), cv2.INTER_LINEAR)
    #img_r = cv2.resize(img_r, (4096,2160), cv2.INTER_LINEAR)
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
RInv1 = np.linalg.inv(R1)
RInv2 = np.linalg.inv(R2)

# Parameters -  cameraMatrix, P, distCoeffs, R_inv
f = open("params.txt", "w")


PREC = 8 # bits
PREC_INTER = 3 # bits (additional)

print("cameraMatrix")
print(cameraMatrix1)
fx1,fy1 = np.uint32(np.array([cameraMatrix1[0,0],cameraMatrix1[1,1]])*(2**PREC/2**4))  # [8+PREC bits]
cx1,cy1 = np.uint32(np.array([cameraMatrix1[0,2],cameraMatrix1[1,2]])*2**PREC)    # [12+PREC bits]
fx2,fy2 = np.uint32(np.array([cameraMatrix2[0,0],cameraMatrix2[1,1]])*(2**PREC/2**4))  # [8+PREC bits]
cx2,cy2 = np.uint32(np.array([cameraMatrix2[0,2],cameraMatrix2[1,2]])*2**PREC)    # [12+PREC bits]
print([fx1,fy1,cx1,cy1])
f.write("cameraMatrixL [fx(/2^4)["+str(PREC+8)+" bits] fy(/2^4)["+str(PREC+8)+" bits] cx["+str(PREC+12)+" bits] cy["+str(PREC+12)+" bits]] (*2^"+str(PREC)+") \n"+np.array_str(np.array([fx1,fy1,cx1,cy1]))+"\n")
f.write("cameraMatrixR [fx(/2^4)["+str(PREC+8)+" bits] fy(/2^4)["+str(PREC+8)+" bits] cx["+str(PREC+12)+" bits] cy["+str(PREC+12)+" bits]] (*2^"+str(PREC)+") \n"+np.array_str(np.array([fx2,fy2,cx2,cy2] ))+"\n")

print("P")
print(P1)
fxNewInv1,fyNewInv1 = np.uint32(np.array([1/P1[0,0],1/P1[1,1]])*2**16*2**PREC)  # [8+PREC bits]
cxNew1,cyNew1       = np.uint32(np.array([P1[0,2],P1[1,2]])*2**PREC)              # [12+PREC bits]
fxNewInv2,fyNewInv2 = np.uint32(np.array([1/P2[0,0],1/P2[1,1]])*2**16*2**PREC)  # [8+PREC bits]
cxNew2,cyNew2       = np.uint32(np.array([P2[0,2],P2[1,2]])*2**PREC)              # [12+PREC bits]
print([fxNewInv1,fyNewInv1,cxNew1,cyNew1])
f.write("newCameraMatrixL_frac [1/fx (*2^16)["+str(PREC+8)+" bits] 1/fy (*2^16)["+str(PREC+8)+" bits] cx["+str(PREC+12)+" bits] cy["+str(PREC+12)+" bits]] (*2^"+str(PREC)+")\n"+np.array_str(np.array([fxNewInv1,fyNewInv1,cxNew1,cyNew1]))+"\n")
f.write("newCameraMatrixR_frac [1/fx (*2^16)["+str(PREC+8)+" bits] 1/fy (*2^16)["+str(PREC+8)+" bits] cx["+str(PREC+12)+" bits] cy["+str(PREC+12)+" bits]] (*2^"+str(PREC)+")\n"+np.array_str(np.array([fxNewInv2,fyNewInv2,cxNew2,cyNew2]))+"\n")

print("distCoeffs")
print(distCoeffs1)
distCoeffs1_int = np.int32(distCoeffs1*2**PREC_INTER*2**PREC) # [PREC+PREC_INTER+1 bits]
distCoeffs2_int = np.int32(distCoeffs2*2**PREC_INTER*2**PREC) # [PREC+PREC_INTER+1 bits]
print(distCoeffs1_int)
f.write("distCoeffsL [k1 k2 p1 p2 k3] (*2^"+str(PREC+PREC_INTER)+")["+str(PREC+PREC_INTER+1)+" bits] \n"+np.array_str(distCoeffs1_int)+"\n")
f.write("distCoeffsR [k1 k2 p1 p2 k3] (*2^"+str(PREC+PREC_INTER)+")["+str(PREC+PREC_INTER+1)+" bits] \n"+np.array_str(distCoeffs2_int)+"\n")

print("RInv")
print(RInv1)
RInv1 = np.int32(RInv1*2**PREC_INTER*2**PREC) # [PREC+PREC_INTER+1 bits]
RInv2 = np.int32(RInv2*2**PREC_INTER*2**PREC) # [PREC+PREC_INTER+1 bits]
print(RInv1)
f.write("RInvL (*2^"+str(PREC+PREC_INTER)+")["+str(PREC+PREC_INTER+1)+" bits] \n"+np.array_str(RInv1)+"\n")
f.write("RInvR (*2^"+str(PREC+PREC_INTER)+")["+str(PREC+PREC_INTER+1)+" bits] \n"+np.array_str(RInv2)+"\n")

f.close()
#####################################
###### Calculation with OpenCV ######
#####################################

map1_L, map2_L = cv2.initUndistortRectifyMap(cameraMatrix1, distCoeffs1, R1, P1, gray_l.shape[::-1], cv2.CV_16SC2)
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


def initUndistorRectifyMap_HW(fx,fy,cx,cy,cxNew,cyNew,fxNewInv,fyNewInv,distCoeffs,RInv,Y,X):
    mapx_int = np.zeros((Y, X))
    mapy_int = np.zeros((Y, X))
    mapx_fraq = np.zeros((Y, X))
    mapy_fraq = np.zeros((Y, X))
    for v in range(Y):
        for u in range(X):  # u,v [12 bits] (unsigned) (4K)
            x = np.int64((u *2**PREC - cxNew) * fxNewInv / (2**PREC * 2**16 / 2**PREC_INTER))
            y = np.int64((v *2**PREC - cyNew) * fyNewInv / (2**PREC * 2**16 / 2**PREC_INTER))
            # [2 bits](signed)*2^PREC*2^PREC_INTER => [PREC+PREC_INTER+2 bits]
            X1 = np.int64((np.int32(RInv[0, 0] * x / (2**(PREC+PREC_INTER))) + np.int32(
                RInv[0, 1] * y / (2**(PREC+PREC_INTER))) + np.int32(RInv[0, 2])) / 4)
            Y1 = np.int64((np.int32(RInv[1, 0] * x / (2**(PREC+PREC_INTER))) + np.int32(
                RInv[1, 1] * y / (2**(PREC+PREC_INTER))) + np.int32(RInv[1, 2])) / 4)
            W = np.int64((np.int32(RInv[2, 0] * x / (2**(PREC+PREC_INTER))) + np.int32(
                RInv[2, 1] * y / (2**(PREC+PREC_INTER))) + np.int32(RInv[2, 2])) / 4)
            # [PREC+PREC_INTER+2 bits]
            x1 = np.int64(X1 * (2**(PREC+PREC_INTER)) / W)
            y1 = np.int64(Y1 * (2**(PREC+PREC_INTER)) / W)
            # [PREC+PREC_INTER+2 bits]
            r2 = np.int64(x1 ** 2 / (2**(PREC+PREC_INTER))) + np.int64(y1 ** 2 / (2**(PREC+PREC_INTER)))
            # [PREC+PREC_INTER+3 bits] (unsigned)
            kr = 1 * (2**(PREC+PREC_INTER))+ np.int32(distCoeffs[0, 0] * r2 / (2**(PREC+PREC_INTER))) + np.int32(
                distCoeffs[0, 1] * np.int32(r2 ** 2 / (2**(PREC+PREC_INTER))) / (2**(PREC+PREC_INTER)))  # + distCoeffs1[0,4] * r2 **3
            # [PREC+PREC_INTER+3 bits] (unsigned)
            x2 = np.int64(x1 * kr / (2**(PREC+PREC_INTER))) + 2 * np.int64(
                distCoeffs[0, 2] * np.int32(x1 * y1 / (2**(PREC+PREC_INTER))) / (2**(PREC+PREC_INTER))) + \
                 np.int64(distCoeffs[0, 3] * (r2 + 2 * np.int32(x1 ** 2 / (2**(PREC+PREC_INTER)))) / (2**(PREC+PREC_INTER)))
            y2 = np.int64(y1 * kr / (2**(PREC+PREC_INTER))) + 2 * np.int32(
                distCoeffs[0, 3] * np.int32(x1 * y1 / (2**(PREC+PREC_INTER))) / (2**(PREC+PREC_INTER))) + \
                 np.int64(distCoeffs[0, 2] * (r2 + 2 * np.int32(y1 ** 2 / (2**(PREC+PREC_INTER)))) / (2**(PREC+PREC_INTER)))
            x3 = (np.int32(fx * x2 / (2**PREC / 2**4) / 2**PREC_INTER) + cx) - u*(2**PREC)
            y3 = (np.int32(fy * y2 / (2**PREC / 2**4) / 2**PREC_INTER) + cy) - v*(2**PREC)
            mapx_int[v, u] = np.int16(x3 / (2**PREC))
            mapy_int[v, u] = np.int16(y3 / (2**PREC)) # [12 bits]
            mapx_fraq[v, u] = np.int16((x3 - mapx_int[v, u]*(2**PREC)))
            mapy_fraq[v, u] = np.int16((y3 - mapy_int[v, u]*(2**PREC))) # [PREC bits]

    return mapx_int,mapy_int,mapx_fraq,mapy_fraq

[fx1,fy1,cx1,cy1] = np.array([fx1,fy1,cx1,cy1])
[fx2,fy2,cx2,cy2] = np.array([fx2,fy2,cx2,cy2])
[cxNew1,cyNew1] = np.array([cxNew1,cyNew1])
[cxNew2,cyNew2] = np.array([cxNew2,cyNew2])
[fxNewInv1,fyNewInv1] = np.array([fxNewInv1,fyNewInv1])
[fxNewInv2,fyNewInv2] = np.array([fxNewInv2,fyNewInv2])
distCoeffs1 = np.array(distCoeffs1_int)
distCoeffs2 = np.array(distCoeffs2_int)
RInv1 = np.array(RInv1)
RInv2 = np.array(RInv2)

(Y, X ,Z) = img_l.shape
mapx_L_int,mapy_L_int,mapx_L_fraq,mapy_L_fraq = initUndistorRectifyMap_HW(fx1,fy1,cx1,cy1,cxNew1,cyNew1,fxNewInv1,fyNewInv1,distCoeffs1,RInv1,Y,X)
mapx_R_int,mapy_R_int,mapx_R_fraq,mapy_R_fraq = initUndistorRectifyMap_HW(fx2,fy2,cx2,cy2,cxNew2,cyNew2,fxNewInv2,fyNewInv2,distCoeffs2,RInv2,Y,X)

mapx_L, mapy_L = mapx_L_int+mapx_L_fraq/(256 * 4),  mapy_L_int+mapy_L_fraq/(256 * 4)
mapx_R, mapy_R = mapx_R_int+mapx_R_fraq/(256 * 4),  mapy_R_int+mapy_R_fraq/(256 * 4)

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
        p00 = gray_L[j+y0, i+x0]
        p01 = gray_L[j+y0, min(i+x0 + 1, X - 1)]
        p10 = gray_L[min(j+y0 + 1, Y - 1), i+x0]
        p11 = gray_L[min(j+y0 + 1, Y - 1), min(i+x0 + 1, X - 1)]
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
        p00 = gray_R[j+y0, i+x0]
        p01 = gray_R[j+y0, min(i+x0 + 1, X - 1)]
        p10 = gray_R[min(j+y0 + 1, Y - 1), i+x0]
        p11 = gray_R[min(j+y0 + 1, Y - 1), min(i+x0 + 1, X - 1)]
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



