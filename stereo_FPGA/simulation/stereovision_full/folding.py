#!/usr/bin/python
# -*- coding: utf-8 -*-

import numpy as np
import matplotlib.image as mpimg
import matplotlib.pyplot as plt

def read(img_l: str, img_r: str):
    img_l = mpimg.imread(img_l)
    img_r = mpimg.imread(img_r)
    return img_l,img_r

def write(img_lr:np.ndarray, name: str):
    plt.imsave(name,img_lr)

def fold(img_l:np.ndarray, img_r:np.ndarray):
    h, w, c = img_l.shape
    img_lr = np.ndarray([h, w, c ])  #w-1 for resolusion devided by 4

    for x in range(w-1):
        if x%2==0:
            img_lr[:, x, :] = img_l[:, x, :]
        else:
            img_lr[:, x, :] = img_r[:, x, :]

    return img_lr


def test_01():
    img_l, img_r = read("imgLR\im0-lite.png","imgLR\im1-lite.png")
    img = fold(img_l, img_r)
    print(type(img))
    write(img ,"img_in\im01-lite.ppm")
    plt.imshow(img)
    plt.show()

if __name__ == '__main__':
    test_01()