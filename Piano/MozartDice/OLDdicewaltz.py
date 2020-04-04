#!/usr/bin/python
# coding: latin-1
from __future__ import print_function

"""

Based on:
Musikalisches Wuerfelspiel
K.V. Anhang 294d (516f), Wien 1778
Wolfgang Amadeus Mozart
Edition N. Simrock, Bonn 1796

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

"""

from random import randint
from argparse import ArgumentParser
import os
from waltzdice import common
from sys import stdout
from sys import stderr
from sys import path
from waltzdice import dicemidi

################################################################

def greenprint(s, nocolor=False):
    if nocolor == False:
        s = '\x1b[32m' + s + '\x1b[0m'
    print(s, file=stderr)

def redprint(s, color=True):
    if color:
        s ='\x1b[31m' + s + '\x1b[0m'
    print(s, file=stderr)

def main():
    parser = ArgumentParser(description='{}'.format(common.DICEWALTZ_DESCRIPTION))
    parser.add_argument('-d', '--dicemode', help='DICEMODE=0: read dice values from standard input, DICEMODE=1: randomize numbers between 2 and 12, DICEMODE=2: simulate throwing two 6-sided dice', type=int, default=2)
    parser.add_argument('-e', '--export', help='use EXPORT engraver syntax (lilypond | lily | ly | abc | mup)')
    parser.add_argument('-i', '--infile', metavar='FILE', help='read dice sequence from FILE (*.dice)')
    parser.add_argument('-L', '--landscape', action='store_true', help='use landscape paper orientation')
    parser.add_argument('-t', '--tempo', type=int, default=150, help='TEMPO 1/8 notes per minute') 
    parser.add_argument('-o', '--outfile', metavar='FILE', help='write to FILE (*.mup | *.ly | *.abc)')
    parser.add_argument('-nc', '--nocolors', action='store_true', help='disable ANSI colors in messages')
    parser.add_argument('-p', '--papersize', metavar='PAPERSIZE', default='a4', help='PAPERSIZE=(a4 | letter |...)')
    parser.add_argument('-s', '--signature', metavar='EPSFILE', default='signature.eps', help='use EPSFILE as Mozart\'s signature')
    parser.add_argument('-u', '--upper', metavar='INSTRUMENT', default='0', help='Use Midi INSTRUMENT name or number (0-127) for upper part') 
    parser.add_argument('-l', '--lower', metavar='INSTRUMENT', default='0', help='Use Midi INSTRUMENT name or number (0-127) for lower part') 
    parser.add_argument('-v', '--version', action='version', version=common.DICEWALTZ_VERSION)
    args = parser.parse_args()

    nc = args.nocolors
    if args.outfile:
        outfile = args.outfile
    else:
        outfile = 'dicewaltz'
    outfile_ = os.path.splitext(outfile)[0]
    ext = os.path.splitext(outfile)[1]

    bass = args.lower.lower().strip()
    if bass.isdigit():
        bass = int(bass)
    else:
        try:
            bass = dicemidi.instrument.index(bass)
        except:
            bass = 0

    treble = args.upper.lower().strip()
    if treble.isdigit():
        treble = int(treble)
    else:
        try:
            treble = dicemidi.instrument.index(treble)
        except:
            treble = 0

    export = None
    if args.export:
        export = args.export.lower()
    elif ext:
        export = ext[1:].lower()

    if export in ('ly', 'lily', 'lilypond'): 
        from waltzdice import dicelily
        out = dicelily.out
    elif export == 'abc': 
        from waltzdice import diceabc
        out = diceabc.out
    elif export == 'mup': 
        from waltzdice import dicemup
        out = dicemup.out

    else:
        redprint ('Unknown or unspecified export format!', nc)
        quit()

    if args.signature:
        signature = args.signature
    else:
        signature = "signature.eps"
    
    if not os.path.exists(signature):
        redprint ('{} not found. Using standard signature.'.format(signature), nc)

    if args.infile:
        dicelist = []
        infile = args.infile
        greenprint ('Reading dice sequence from {}:'.format(infile), nc)
        with open(infile,'r') as f:
            lines = f.readlines()
            n = 0
            for line in lines:
                L = line.split(',')
                for s in L:
                    s = s.strip()
                    if s.isdigit():
                        dicelist.append(2+(int(s)-2)%11)
                        n += 1
                        if n == 16:
                            break
    else:
        dicelist = common.throwdice(args.dicemode)

        with open(outfile_+'.dice','w') as f:
            f.write(str(dicelist[:8])[1:-1] + ',\n')
            f.write(str(dicelist[8:16])[1:-1])
        greenprint ('Dice sequence written to {}.dice:'.format(outfile_), nc)

    if args.outfile:
        f = open(outfile, 'w')
        with open(outfile, 'w') as f:
            f.write(out(dicelist, ext, args.papersize, args.landscape, signature, bass, treble, args.tempo))
        greenprint ('Dice Waltz written to {}'.format(outfile), nc)
    else:
        print (out(dicelist, ext, args.papersize, args.landscape, signature, bass, treble, args.tempo))

    greenprint ('Ready!', nc)

if __name__ == '__main__':
    main()

