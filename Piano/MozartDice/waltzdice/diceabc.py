# coding: latin-1
"""

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
import os
from . import common
from . import paper
from . import dicemidi
instrument = dicemidi.instrument

# ABC engraver

def out(dicelist, ext='.abc', pagesize='a4', landscape=False, signature='signature.eps', bass=None, treble=None, tempo=150):
    pagewidth, pageheight = paper.paper[pagesize]
    cm = 28.346457
    pagewidth = pagewidth/cm
    pageheight = pageheight/cm

    rh = [""]*177
    lh = [""]*177

	# "TABLE DE MUSIQUE."

    rh[1] = "fdg"
    lh[1] = "F,D,G,"
    rh[2] = "A^F/G/B/g/"
    lh[2] = lh[86] = lh[121] = lh[133] = "[B,,2G,2] z"
    rh[3] = "gce"
    lh[3] = lh[6] = lh[32] = lh[40] = lh[41] = lh[43] = lh[51] = lh[60] = lh[69] = lh[74] = lh[84] = lh[95] = lh[115] = lh[119] = lh[136] = lh[142] = lh[148] = lh[152] = lh[167] = "[C,2E,2] z"
    rh[4] = "g +trill+d2"
    lh[4] = "G,,/B,,/G,B,,"
    rh[5] = rh[24] = rh[30] = rh[33] = rh[81] = rh[91] = rh[94] = rh[100] = rh[107] = rh[123] = rh[127] = "[1 [G2B2d2g2] z :| [2 [G2B2d2g2] z"
    lh[5] = lh[24] = lh[30] = lh[33] = lh[81] = lh[91] = lh[94] = lh[100] = lh[107] = lh[123] = lh[127] = "[1 G,,G,/=F,/E,/D,/ :| [2 G,,B,/G,/^F,/E,/"
    rh[6] = "Gce"
    rh[7] = "e/c/e/g/c'/g/"
    lh[7] = "[C,2G,2] z"
    rh[8] = rh[14] = rh[79] = rh[83] = rh[93] = rh[111] = rh[131] = rh[151] = rh[170] = rh[172] = "c2 z"
    lh[8] = lh[14] = lh[79] = lh[83] = lh[93] = lh[111] = lh[131] = lh[151] = lh[170] = lh[172] = "C,G,,C,,"
    rh[9] = "[ce][Bd] z"
    lh[9] = "G,2 G,,"
    rh[10] = "B/A/B/c/d/B/"
    lh[10] = lh[34] = "G,2 z"
    rh[11] = "e/c/B/A/G/^F/"
    lh[11] = lh[21] = lh[36] = lh[62] = lh[106] = lh[110] = lh[118] = lh[134] = lh[147] = lh[159] = lh[169] = "C,D,D,,"
    rh[12] = rh[54] = rh[124] = rh[130] = "[Ec][Ec][Ec]"
    lh[12] = lh[54] = lh[75] = lh[124] = lh[130] = lh[146] = lh[161] = "C,C,C,"
    rh[13] = "(cGE)"
    lh[13] = lh[17] = lh[45] = lh[50] = lh[61] = lh[85] = lh[103] = lh[156] = "[E,2G,2] z"
    rh[15] = "eg/e/c"
    lh[15] = lh[19] = lh[48] = lh[101] = lh[108] = lh[162] = "[C,2G,2][C,E,]"
    rh[16] = "(a^fd)"
    lh[16] = lh[120] = "[D,2^F,2][C,F,]"
    rh[17] = "c/G/c/e/G/c/"
    rh[18] = "(Gce)"
    lh[18] = lh[76] = lh[87] = "[C,2E,2][C,G,]"
    rh[19] = "e/c/eg"
    rh[20] = "gb/d'/d"
    lh[20] = lh[139] = "B,,2 z"
    rh[21] = "c/e/g/d/A/^f/"
    rh[22] = "ecG"
    lh[22] = lh[53] = lh[63] = lh[80] = lh[96] = lh[104] = lh[105] = lh[153] = lh[154] = lh[157] = "C,2 z"
    rh[23] = "f/e/d/e/f/g/"
    lh[23] = "F,/E,/D,/E,/F,/G,/"
    rh[25] = "D/^F/A/d/^f/a/"
    lh[25] = lh[70] = "D,2 C,"
    rh[26] = "[ce][ce][ce]"
    lh[26] = "C,/E,/G,/E,/C/C,/"
    rh[27] = "f/e/f/d/c/B/"
    lh[27] = lh[113] = lh[166] = "[G,2B,2] z"
    rh[28] = "^f/d/A/a/f/d/"
    lh[28] = "[C,2A,2] z"
    rh[29] = "B/d/g/d/B"
    lh[29] = "G,2 G,,"
    rh[31] = "e/c/G e"
    lh[31] = lh[64] = "[C,2G,2] [C,G,]"
    rh[32] = "Gce"
    rh[34] = "e/c/d/B/G"
    rh[35] = "Ad^f"
    lh[35] = "[D,2^F,2] [C,A,]"
    rh[36] = "A/e/d/g/^f/a/"
    rh[37] = "g/b/g/d/B"
    lh[37] = lh[46] = lh[47] = lh[55] = lh[155] = lh[163] = "[B,,2D,2] z"
    rh[38] = "cGe"
    lh[38] = lh[49] = lh[57] = lh[58] = lh[59] = lh[73] = lh[98] = lh[112] = lh[137] = lh[144] = lh[174] = "[C,/E,/]G,/[C,/E,/]G,/[C,/E,/]G,/"
    rh[39] = "gGG"
    lh[39] = "B,,/D,/G,/D,/B,,/G,,/"
    rh[40] = "c/B/c/e/G/c/"
    rh[41] = "c/B/c/e/G"
    rh[42] = "B/c/d/B/A/G/"
    lh[42] = lh[128] = lh[158] = "G,,2 z"
    rh[43] = "gf/e/d/c/"
    rh[44] = "Af/d/A/B/"
    lh[44] = lh[52] = lh[72] = lh[116] = lh[145] = lh[149] = lh[173] = "F,2 G,"
    rh[45] = "c/B/c/G/E/C/"
    rh[46] = "gb/g/d/B/"
    rh[47] = "gg/d/b"
    rh[48] = "ec/e/g/c'/"
    rh[49] = "(ecG)"
    rh[50] = "ce/c/G"
    rh[51] = "c/G/e/c/g/e/"
    rh[52] = "(d/^c/)d/f/G/B/"
    rh[53] = "[ce][c/e/][d/f/][eg]"
    rh[55] = "gbd"
    rh[56] = "d/B/G z"
    lh[56] = lh[92] = "[G,,2G,2] G,"
    rh[57] = "ecG"
    rh[58] = rh[73] = "gec"
    rh[59] = "gce"
    rh[60] = "gf/e/d/c/"
    rh[61] = "ce/c/g"
    rh[62] = "e/c/B/G/A/^F/"
    rh[63] = "e/c/B/c/G"
    rh[64] = "e/g/c'/g/e/c/"
    rh[65] = "d/A/d^f"
    lh[65] = lh[117] = "[D,2^F,2] z"
    rh[66] = "^faf"
    lh[66] = "[D,A,][D,^F,][C,D,]"
    rh[67] = "c/B/c/e/G/c/"
    lh[67] = lh[168] = "[C,2E,2][E,G,]"
    rh[68] = "gb/g/d/g/"
    lh[68] = lh[165] = "B,,2 z"
    rh[69] = "(gec)"
    rh[70] = "^fa/f/d/f/"
    rh[71] = "g/b/d'/b/g"
    lh[71] = lh[88] = lh[143] = lh[176] = "[B,,2D,2][B,,D,]"
    rh[72] = "f/e/d/c/B/d/"
    rh[74] = rh[76] = rh[136] = rh[148] = "c'/b/c'/g/e/c/"
    rh[75] = "[d^f][df][df]"
    rh[77] = "g/b/gd"
    lh[77] = lh[97] = "[B,,2D,2][B,,G,]"
    rh[78] = "cC z"
    lh[78] = "C,2 C,,"
    rh[80] = "d+turn+A^f"
    rh[82] = "d/B/G g"
    lh[82] = "[B,,2G,2][B,,D,]"
    rh[84] = "c/G/e/c/g/e/"
    rh[85] = "ceG"
    rh[86] = "dd/g/b"
    rh[87] = "gce"
    rh[88] = "g/d/g/b/g/d/"
    rh[89] = "f/e/dg"
    lh[89] = "F,/E,/D,G,"
    rh[90] = "^f/a/d'/a/f/a/"
    lh[90] = "[C,2A,2][C,A,]"
    rh[92] = "[Bd]g/b/d"
    rh[95] = "gec"
    rh[96] = "ecG"
    rh[97] = "g/^f/g/d/B/G/"
    rh[98] = "cGe"
    rh[99] = "^fad"
    lh[99] = lh[102] = "[C,2A,2][C,A,]"
    rh[101] = "e/d/e/g/c'/g/"
    rh[102] = "^f/d/A f"
    rh[103] = "c/e/c/G/E"
    rh[104] = "e/d/e/g/c'/g/"
    rh[105] = "^fa/f/d/f/"
    rh[106] = "Ad/c/B/A/"
    rh[108] = "(egc')"
    rh[109] = "d/f/d/f/B/d/"
    lh[109] = "[F,2A,2][G,D]"
    rh[110] = "([B/d/][A/c/])([A/c/][G/B/])([G/B/][^F/A/])"
    rh[112] = "ecG"
    rh[113] = "fdB"
    rh[114] = "[Bd][Bd][Bd]"
    lh[114] = "G,G,G,"
    rh[115] = "c/G/e/c/g/e/"
    rh[116] = "d/f/a/f/d/B/"
    rh[117] = "d/A/d/^f/a/f/"
    rh[118] = "e/a/g/b/^f/a/"
    rh[119] = "e/c/g/e/c'/g/"
    rh[120] = "d'a/^f/d/A/"
    rh[121] = "gb/g/d"
    rh[122] = "g/^f/g/b/d"
    lh[122] = lh[129] = "[B,,D,][B,,D,][B,,G,]"
    rh[125] = "g/e/d/B/G"
    lh[125] = lh[132] = lh[175] = "G,G,, z"
    rh[126] = "c/G/c/e/g/[c/e/]"
    lh[126] = "E,2 E,/C,/"
    rh[128] = "Bdg"
    rh[129] = "a/g/^f/g/d"
    rh[132] = "[ce][B/d/][G/B/]G"
    rh[133] = "dg/d/B/d/"
    rh[134] = "A/e/[B/d/][A/c/][G/B/][^F/A/]"
    rh[135] = "^ff/d/a"
    lh[135] = "[C,D,][C,D,][C,D,]"
    rh[136] = "c'/b/c'/g/e/c/"
    rh[137] = "cGe"
    rh[138] = "[Ad^f] +trill+f2"
    lh[138] = "D,,/D,/^C,/D,/=C,/D,/"
    rh[139] = "g/b/g/b/d"
    rh[140] = "AA/d/^f"
    lh[140] = "[C,^F,][C,F,][C,A,]"
    rh[141] = "d/e/f/d/c/B/"
    lh[141] = "[B,,2D,2] G,,"
    rh[142] = "cGe"
    rh[143] = "gd/B/G"
    rh[144] = "gce"
    rh[145] = "d/f/A/d/B/d/"
    rh[146] = "[^Fd][d^f][fa]"
    rh[147] = "e/c'/b/g/a/^f/"
    rh[148] = "c'/b/c'/g/e/c/"
    rh[149] = "f/d/AB"
    rh[150] = "[Gce] +trill+e2"
    lh[150] = "C,/B,,/C,/D,/E,/^F,/"
    rh[152] = "gf/e/d/c/"
    rh[153] = "d/A/^f/d/a/f/"
    rh[154] = "d/^c/d/^f/a/f/"
    rh[155] = "g/b/g/d/B/G/"
    rh[156] = "c/G/e/c/g"
    rh[157] = "e/d/e/g/c'/g/"
    rh[158] = "Bd/B/A/G/"
    rh[159] = "e/g/d/c/B/A/"
    rh[160] = "c/B/c/e/G/c/"
    lh[160] = "[C,2E,2][C,E,]"
    rh[161] = "[^Fd][Fd][Fd]"
    rh[162] = "e/d/e/g/c'/g/"
    rh[163] = "g/^f/g/d/B/G/"
    rh[164] = "d G2"
    lh[164] = "G,/^F,/G,/D,/B,,/G,,/"
    rh[165] = "(dBG)"
    rh[166] = "d/b/g/d/B"
    rh[167] = "cc/d/e"
    rh[168] = "gf/e/d/c/"
    rh[169] = "e/g/d/g/A/^f/"
    rh[171] = "B/c/d/e/f/d/"
    lh[171] = "[G,,2G,2][B,,G,]"
    rh[173] = "f/a/ A B/d/"
    rh[174] = "Gce"
    rh[175] = "e/c/B/d/g"
    rh[176] = "a/g/b/g/d/g/"

    dicewaltz = common.waltz(dicelist)

    for i in range(177):
        if rh[i] == "":
            rh[i]="c3"
        if lh[i] == "":
            lh[i]="C,3"
    s=[]
    s.append('%DICE: ')
    for n in range(15):
        s.append('{}, '.format(dicelist[n]))
    s.append('{}\n'.format(dicelist[15]))
    s.append('%TABLE DE MUSIQUE: ')
    for n in range(15):
        s.append('{}, '.format(dicewaltz[n]))
    s.append('{}\n'.format(dicewaltz[15]))
    if landscape:
        s.append('%%landscape 1\n')
    s.append('%%pageheight {}cm\n'.format(round(pageheight, 2)))
    s.append('%%pagewidth {}cm\n'.format(round(pagewidth, 2)))
    s.append('%%header {}\n'.format(common.DICEWALTZ_DESCRIPTION))
    s.append('%%footer "Auto-created using DiceWaltz {}"\n'.format(common.DICEWALTZ_VERSION))
    s.append('%%titlefont Times-Bold utf-8 26.0\n')
    s.append('%%printtempo 0\n')
    s.append('X: 1\n')
    s.append('T: WALZER\n')
    if not os.path.exists(signature):
        s.append('C: W.A. Mozart\n')
    s.append('L: 1/8\n')
    s.append('M: 3/8\n')
    s.append('Q: 1/8={}\n'.format(tempo))
    s.append('V: RH clef=treble\n')
    s.append('V: LH clef=bass\n')
    s.append('K: C\n')
    s.append('%%score {RH|LH}\n')
    if os.path.exists(signature):
        s.append('%%multicol start\n')
        if landscape == 1:
            s.append('%%leftmargin {}cm\n'.format(round(pageheight-146/cm),2))
        else:
            s.append('%%leftmargin {}cm\n'.format(round(pagewidth-146/cm),2))
        s.append('%%EPS {}\n'.format(signature))
        s.append('%%multicol end\n')
    s.append('%\n')
    if treble:
        s.append('%%MIDI program 1 {} % {}\n'.format(treble, instrument[treble]))
    if bass:
        s.append('%%MIDI program 2 {} % {}\n'.format(bass, instrument[bass]))
    s.append('[V:RH][I:repbra 1] ')
    for i in range(0,7):
        s.append(' '+rh[dicewaltz[i]]+' |')
    s.append(' '+rh[dicewaltz[7]]+' |:')
    for i in range(8,15):
        s.append(' '+rh[dicewaltz[i]]+' |')
    s.append(' '+rh[dicewaltz[15]]+' :| \n')

    s.append('[V:LH][I:repbra 0] ')
    for i in range(0,7):
        s.append(" "+lh[dicewaltz[i]]+' |')
    s.append(' '+lh[dicewaltz[7]]+' |:')
    for i in range(8,15):
        s.append(' '+lh[dicewaltz[i]]+' |')
    s.append(' '+lh[dicewaltz[15]]+' :|\n')
    s.append('\n')
    return ''.join(s)

################################################################


