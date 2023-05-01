#!/usr/bin/python
# -*- coding: utf-8 -*-

import numpy as np
import matplotlib.image as mpimg
import matplotlib.pyplot as plt

def read(img_l: str, img_r: str):
    img_l = mpimg.imread(img_l)
    img_r = mpimg.imread(img_r)
    return img_l,img_r

# evaluation functions
def bad(orig, calc,thres: int) -> float:
    h, w = orig.shape
    diff = np.zeros(orig.shape)
    s = 0
    for y in range(1,h-1):
        for x in range(64,w-64):
            diff[y][x] = (np.abs(int(calc[y][x]) - int(orig[y][x])))
            if diff[y][x]>=thres:
                if orig[y][x]!=0:
                    s = s+1
    result = s/((h-2)*(w-128))
    plt.imshow(diff , cmap='gray')
    plt.show()
    return result

def rms(orig, calc) -> float:
    h, w = orig.shape
    s = 0
    for y in range(2, h - 2):
        for x in range(63, w - 2):
            s = s + np.abs(int(calc[y][x])-int(orig[y][x]))**2
    result = (s / ((h-2)*(w-63)))**(1/2)
    return result

def evaluation(origl,origr,displ,dispr):#,namel,namer):
    badl1 = bad(origl, displ, 1)
    badr1 = bad(origr, dispr, 1)
    badl2 = bad(origl, displ, 2)
    badr2 = bad(origr, dispr, 2)
    badl4 = bad(origl, displ, 4)
    badr4 = bad(origr, dispr, 4)
    rmsl = rms(origl, displ)
    rmsr = rms(origr, dispr)
    print("Bad1.0 L: {} \nBad1.0 R: {}\nBad2.0 L: {} \nBad2.0 R: {} \n"
          "Bad4.0 L: {} \nBad4.0 R: {} \nRMS L: {} \nRMS R: {}".
          format(badl1,badr1,badl2,badr2,badl4,badr4,rmsl,rmsr))
    #plt.imsave(namel,displ)
    #plt.imsave(namer,dispr)

def test_01():
    dispCPP_L, dispCPP_R = read("Qk/origL.png","Qk/origR.png")
    dispFPGA_L,dispFPGA_R= read("Qk/dispL0p.pgm","Qk/dispR0p.pgm")
    evaluation(dispCPP_L*256,dispCPP_R*256,dispFPGA_L,dispFPGA_R)

if __name__ == '__main__':
    test_01()