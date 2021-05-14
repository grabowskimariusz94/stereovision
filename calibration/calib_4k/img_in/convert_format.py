#!/usr/bin/python
# -*- coding: utf-8 -*-

import numpy as np
import matplotlib.image as mpimg
import matplotlib.pyplot as plt

def read(img_l: str, img_r: str):
    img_l = mpimg.imread(img_l)
    img_r = mpimg.imread(img_r)
    return img_l,img_r

def write(img_l:np.ndarray, img_r:np.ndarray, name_l: str, name_r: str):
    plt.imsave(name_l,img_l)
    plt.imsave(name_r,img_r)
    
    
if __name__ == '__main__':
    img_l, img_r = read("left02.jpg","right02.jpg")
    write(img_l, img_r, "left02.pgm","right02.pgm")