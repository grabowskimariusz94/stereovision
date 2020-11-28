#!/usr/bin/python
# -*- coding: utf-8 -*-

import numpy as np
import matplotlib.image as mpimg
import matplotlib.pyplot as plt
from PIL import Image


def sad(img_l: np.ndarray, img_r: np.ndarray, min_row: int, max_row: int, min_col: int, max_col: int , d: int) -> float:
    sad_val = 0.0
    sad_mat = np.abs(img_r[min_row : max_row, min_col:max_col] - img_l[min_row : max_row, min_col+d:max_col+d])
    sad_val = sum(sum(sad_mat))
    return sad_val


def semi_global(img_l: str, img_r: str, d_range: int, win: int, rl: bool):
    img_l = mpimg.imread(img_l)
    img_r = mpimg.imread(img_r)
    gray_l = img_l[:, :, 0] * 0.299 + img_l[:, :, 1] * 0.587 + img_l[:, :, 2] * 0.144
    gray_r = img_r[:, :, 0] * 0.299 + img_r[:, :, 1] * 0.587 + img_r[:, :, 2] * 0.144
    h, w = gray_l.shape
    c = list()
    disparity = np.zeros(gray_l.shape)

    # fitting costs
    for y in range(h):
        c.append(list())
        min_row = np.maximum(0, y - win)
        max_row = np.minimum(h, y + win + 1)
        for x in range(w):
            c[y].append(list())
            min_col = np.maximum(0, x - win)
            max_col = np.minimum(w, x + win + 1)
            if rl:
                d_min = 0  # assume that there is no negative disparity
                d_max = np.minimum(d_range + 1, w - max_col + 1)

            else:
                d_min = np.maximum(-d_range, -min_col)
                d_max = 1
            sads = np.zeros(d_max - d_min)
            # print(len(sads))
            for i in range(d_min, d_max):
                if rl:
                    block_id = i - d_min
                else:
                    block_id = -i + d_max - 1
                sads[block_id] = sad(gray_l, gray_r, min_row, max_row, min_col, max_col, i)
            c[y][x] = list(sads)
            # best_match = np.argmin(sads)
    # Cost aggregation
    l = [[], [], [], []]
    for y in range(h):
        l[0].append(list())
        l[1].append(list())
        l[2].append(list())
        l[3].append(list())
        for x in range(w):
            l[0][y].append(list())
            l[1][y].append(list())
            l[2][y].append(list())
            l[3][y].append(list())
    p1 = 2
    p2 = 5

    for y in range(h):
        y_b = h - y - 1
        for x in range(w):
            x_b = w - x - 1
            d_len = len(c[y][x][:])
            for d in range(d_len):
                # down
                if y == 0:
                    l[0][y][x].append(c[y][x][d])
                else:
                    if d == 0 and d_len == 1:
                        l[0][y][x].append(c[y][x][d]
                                          + l[0][y - 1][x][d]
                                          - np.argmin([l[0][y - 1][x][:]]))
                    elif d == 0:
                        l[0][y][x].append(c[y][x][d]
                                          + np.argmin([l[0][y - 1][x][d],
                                                       l[0][y - 1][x][d + 1] + p1,
                                                       np.argmin([l[0][y - 1][x][:]]) + p2])
                                          - np.argmin([l[0][y - 1][x][:]]))
                    elif d == (d_len - 1):
                        l[0][y][x].append(c[y][x][d]
                                          + np.argmin([l[0][y - 1][x][d],
                                                       l[0][y - 1][x][d - 1] + p1,
                                                       np.argmin([l[0][y - 1][x][:]]) + p2])
                                          - np.argmin([l[0][y - 1][x][:]]))
                    else:
                        l[0][y][x].append(c[y][x][d]
                                          + np.argmin([l[0][y - 1][x][d],
                                                       l[0][y - 1][x][d - 1] + p1,
                                                       l[0][y - 1][x][d + 1] + p1,
                                                       np.argmin([l[0][y - 1][x][:]]) + p2])
                                          - np.argmin([l[0][y - 1][x][:]]))
                # right
                if x == 0:
                    l[2][y][x].append(c[y][x][d])
                else:
                    d_prev_len = len(c[y][x - 1][:])
                    if d == d_prev_len:
                        l[2][y][x].append(c[y][x][d])
                    elif d == 0 and d_prev_len == 1:
                        l[2][y][x].append(c[y][x][d]
                                          + l[2][y][x - 1][d]
                                          - np.argmin([l[2][y][x - 1][:]]))
                    elif d == 0:
                        l[2][y][x].append(c[y][x][d]
                                          + np.argmin([l[2][y][x - 1][d],
                                                       l[2][y][x - 1][d + 1] + p1,
                                                       np.argmin([l[2][y][x - 1][:]]) + p2])
                                          - np.argmin([l[2][y][x - 1][:]]))
                    elif d == (d_prev_len - 1):
                        l[2][y][x].append(c[y][x][d]
                                          + np.argmin([l[2][y][x - 1][d],
                                                       l[2][y][x - 1][d - 1] + p1,
                                                       np.argmin([l[0][y][x - 1][:]]) + p2])
                                          - np.argmin([l[2][y][x - 1][:]]))
                    else:
                        l[2][y][x].append(c[y][x][d]
                                          + np.argmin([l[2][y][x - 1][d],
                                                       l[2][y][x - 1][d - 1] + p1,
                                                       l[2][y][x - 1][d + 1] + p1,
                                                       np.argmin([l[2][y][x - 1][:]]) + p2])
                                          - np.argmin([l[2][y][x - 1][:]]))
            d_len = len(c[y_b][x_b][:])
            for d in range(d_len):
                # up
                if y == 0:
                    l[1][y_b][x_b].append(c[y_b][x_b][d])
                else:
                    if d == 0 and d_len == 1:
                        l[1][y_b][x_b].append(c[y_b][x_b][d]
                                              + l[1][y_b + 1][x_b][d]
                                              - np.argmin([l[1][y_b + 1][x_b][:]]))
                    elif d == 0:
                        l[1][y_b][x_b].append(c[y_b][x_b][d]
                                              + np.argmin([l[1][y_b + 1][x_b][d],
                                                           l[1][y_b + 1][x_b][d + 1] + p1,
                                                           np.argmin([l[1][y_b + 1][x_b][:]]) + p2])
                                              - np.argmin([l[1][y_b + 1][x_b][:]]))
                    elif d == (d_len - 1):
                        l[1][y_b][x_b].append(c[y_b][x_b][d]
                                              + np.argmin([l[1][y_b + 1][x_b][d],
                                                           l[1][y_b + 1][x_b][d - 1] + p1,
                                                           np.argmin([l[1][y_b + 1][x_b][:]]) + p2])
                                              - np.argmin([l[1][y_b + 1][x_b][:]]))
                    else:
                        l[1][y_b][x_b].append(c[y_b][x_b][d]
                                              + np.argmin([l[1][y_b + 1][x_b][d],
                                                           l[1][y_b + 1][x_b][d - 1] + p1,
                                                           l[1][y_b + 1][x_b][d + 1] + p1,
                                                           np.argmin([l[1][y_b + 1][x_b][:]]) + p2])
                                              - np.argmin([l[1][y_b + 1][x_b][:]]))
                # left
                if x == 0:
                    l[3][y_b][x_b].append(c[y_b][x_b][d])
                else:
                    d_prev_len = len(c[y_b][x_b + 1][:])
                    if d == d_prev_len:
                        l[3][y_b][x_b].append(c[y_b][x_b][d])
                    elif d == 0 and d_prev_len == 1:
                        l[3][y_b][x_b].append(c[y_b][x_b][d]
                                              + l[3][y_b][x_b + 1][d]
                                              - np.argmin([l[3][y_b][x_b + 1][:]]))
                    elif d == 0:
                        l[3][y_b][x_b].append(c[y_b][x_b][d]
                                              + np.argmin([l[3][y_b][x_b + 1][d],
                                                           l[3][y_b][x_b + 1][d + 1] + p1,
                                                           np.argmin([l[3][y_b][x_b + 1][:]]) + p2])
                                              - np.argmin([l[3][y_b][x_b + 1][:]]))
                    elif d == (d_prev_len - 1):
                        l[3][y_b][x_b].append(c[y_b][x_b][d]
                                              + np.argmin([l[3][y_b][x_b + 1][d],
                                                           l[3][y_b][x_b + 1][d - 1] + p1,
                                                           np.argmin([l[3][y_b][x_b + 1][:]]) + p2])
                                              - np.argmin([l[3][y_b][x_b + 1][:]]))
                    else:
                        l[3][y_b][x_b].append(c[y_b][x_b][d]
                                              + np.argmin([l[3][y_b][x_b + 1][d],
                                                           l[3][y_b][x_b + 1][d - 1] + p1,
                                                           l[3][y_b][x_b + 1][d + 1] + p1,
                                                           np.argmin([l[3][y_b][x_b + 1][:]]) + p2])
                                              - np.argmin([l[3][y_b][x_b + 1][:]]))

    for y in range(h):
        for x in range(w):
            d_len = len(c[y][x][:])
            s = np.zeros(d_len)
            for d in range(d_len):
                s[d] = l[0][y][x][d] + l[1][y][x][d] + l[2][y][x][d] + l[3][y][x][d]
            disparity[y][x] = np.argmin(s)
    return disparity

def consistency_check(disp1,disp2,rl):
    h, w = disp1.shape
    disparity = np.zeros(disp1.shape)
    for y in range(h):
        for x in range(w):
            if rl:
                i = int(x+disp1[y][x])
            else:
                i = int(x-disp1[y][x])
            if disp1[y][x] == disp2[y][i]:
                disparity[y][x] = disp1[y][x]
            else:
                disparity[y][x] = -1
    p = 0
    q = 0
    dp = -1
    dq = -1
    for y in range(h):
        for x in range(w):
            if disparity[y][x] == -1:
                while dp == -1:
                    p = p+1
                    if x-p <= 1 :
                        dp = 10000
                    else:
                        dp = disparity[y][x-p]
                while dq == -1:
                    q = q+1
                    if x+q >= w :
                        dq = 10000
                    else:
                        dq = disparity[y][x+q]
                disparity[y][x] = min(dp,dq)
    return disparity

# evaluation functions
def bad(orig, calc,thres: int) -> float:
    h, w = orig.shape
    s = 0
    for y in range(h):
        for x in range(50,w-50):
            if np.absolute(calc[y][x]-orig[y][x])>=thres:
                s = s+1
    result = s/(h*(w-100))
    return result

def rms(orig, calc) -> float:
    h, w = orig.shape
    s = 0
    for y in range(h):
        for x in range(50,w-50):
            s = s + np.absolute(calc[y][x]-orig[y][x])**2
    result = (s / (h *(w-100)))**(1/2)
    return result

def evaluation(origl,origr,displ,dispr,namel,namer):
    badl1 = bad(origl/4, displ, 1)
    badr1 = bad(origr/4, dispr, 1)
    badl2 = bad(origl/4, displ, 2)
    badr2 = bad(origr/4, dispr, 2)
    badl4 = bad(origl/4, displ, 4)
    badr4 = bad(origr/4, dispr, 4)
    rmsl = rms(origl/4, displ)
    rmsr = rms(origr/4, dispr)
    print("Bad1.0 L: {} \nBad1.0 R: {}\nBad2.0 L: {} \nBad2.0 R: {} \n"
          "Bad4.0 L: {} \nBad4.0 R: {} \nRMS L: {} \nRMS R: {}".
          format(badl1,badr1,badl2,badr2,badl4,badr4,rmsl,rmsr))
    plt.imsave(namel,displ)
    plt.imsave(namer,dispr)

def test_01():
    disparityr = semi_global("teddy/left.png", "teddy/right.png", 64, 5,True)
    disparityl = semi_global("teddy/right.png", "teddy/left.png", 64, 5,False)
    plt.imshow(disparityr, cmap='gray', vmin=0, vmax=64)
    plt.imshow(disparityl, cmap='gray', vmin=0, vmax=64)
    origtedl = mpimg.imread("teddy/displ.pgm")
    origtedr = mpimg.imread("teddy/dispr.pgm")
    dispr = consistency_check(disparityr, disparityl, True)
    displ = consistency_check(disparityl, disparityr, False)
    print("Teddy 11:")
    evaluation(origtedl, origtedr, displ, dispr, "teddy/teddy11L.png", "teddy/teddy11R.png")
    plt.show()

if __name__ == '__main__':
    test_01()