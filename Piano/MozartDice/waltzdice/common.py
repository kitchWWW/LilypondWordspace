# coding: latin-1

DICEWALTZ_VERSION='1.2.1 (20130401)'
CONTREDANSE_VERSION='1.2.1 (20130401 modified by Robin Newman for Contredanse 20130820)'

'''

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

Author: m.tarenskeen AT zonnet.nl
THIS VERSION MODIFIED BY ROBIN NEWMAN TO USE DATA FROM THE CONTREDANSES INSTEAD OF THE MINUET
'''
from random import randint
import os
import sys
try:
    input = raw_input
except NameError:
    pass

DICEWALTZ_DESCRIPTION='Musikalisches Würfelspiel K.V. Anhang 294d (516f), Wien 1778'

zahlentafelw = ((96, 22, 141, 41, 105, 122, 11, 30, 70, 121, 26, 9, 112, 49, 109, 14),
        (32, 6, 128, 63, 146, 46, 134, 81, 117, 39, 126, 56, 174, 18, 116, 83),
        (69, 95, 158, 13, 153, 55, 110, 24, 66, 139, 15, 132, 73, 58, 145, 79),
        (40, 17, 113, 85, 161, 2, 159, 100, 90, 176, 7, 34, 67, 160, 52, 170),
        (148, 74, 163, 45, 80, 97, 36, 107, 25, 143, 64, 125, 76, 136, 1, 93),
        (104, 157, 27, 167, 154, 68, 118, 91, 138, 71, 150, 29, 101, 162, 23, 151),
        (152, 60, 171, 53, 99, 133, 21, 127, 16, 155, 57, 175, 43, 168, 89, 172),
        (119, 84, 114, 50, 140, 86, 169, 94, 120, 88, 48, 166, 51, 115, 72, 111),
        (98, 142, 42, 156, 75, 129, 62, 123, 65, 77, 19, 82, 137, 38, 149, 8),
        (3, 87, 165, 61, 135, 47, 147, 33, 102, 4, 31, 164, 144, 59, 173, 78),
        (54, 130, 10, 103, 28, 37, 106, 5, 35, 20, 108, 92, 12, 124, 44, 131))



zahlentafeld = ((70, 14, 164, 122, 25, 153, 18, 167, 155, 3, 162, 170, 13, 166, 95, 5),
        (10, 64, 100, 12, 149, 30, 161, 11, 148, 28, 135, 173, 169, 174, 2, 20),
        (33, 1, 160, 163, 77, 156, 168, 172, 22, 176, 62, 126, 31, 24,159, 41),
        (36, 114, 8, 35, 111, 39, 137, 44, 4, 157, 38, 9, 151, 32, 17, 171),
        (105, 150, 57, 71, 117, 52, 132, 130, 136, 91, 138, 19, 134, 101, 154, 146),
        (165, 152, 112, 15, 147, 27, 73, 102, 144, 104, 87, 107, 128, 48, 109, 74),
        (7, 81, 131, 37, 21, 125, 49, 115, 116, 133, 72, 141, 94, 80, 129, 65),
        (142, 106, 40, 69, 43, 140, 23, 89, 66, 124, 26, 84, 75, 103, 96, 127),
        (99, 68, 86, 139, 120, 92, 143, 83, 93, 55, 29, 51, 42, 110, 108, 98),
        (85, 45, 90, 158, 82, 123, 78, 58, 61, 34, 119, 46, 59, 54, 60, 47),
        (145, 97, 6, 121, 56, 67, 63, 16, 50, 79, 175, 76, 113, 88, 53, 118))

def throwdice(dicemode):
    dicelist = []
    if dicemode == 0:
        n = 0
        while (n<16):
            line = input().split(',')
            for x in line:
                x = x.strip()
                if x.isdigit():
                    dicelist.append(2+(int(x)-2)%11)
                    n += 1
                    if n == 16:
                        break
    else:
        for i in range(0, 16):
            if dicemode == 1:
                dicelist.append(randint(2, 12))
            elif dicemode == 2:
                dice1 = randint(1, 6)
                dice2 = randint(1, 6)
                dicelist.append(dice1+dice2)
    return dicelist

def waltz(dicelist):
    dicewaltz = []
    for i in range(0, 16):
        j = dicelist[i] - 2
        dicewaltz.append(zahlentafelw[j][i])
    return dicewaltz

def contredanse(dicelist):
    dicewaltz = []
    for i in range(0, 16):
        j = dicelist[i] - 2
        dicewaltz.append(zahlentafeld[j][i])
    return dicewaltz

	



