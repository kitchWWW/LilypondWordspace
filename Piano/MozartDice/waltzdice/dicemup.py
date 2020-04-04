# coding: latin-1

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

'''
import os
from . import common
from . import paper
from . import dicemidi
instrument = dicemidi.instrument

################################################################

#Mup engraver

def out(dicelist, ext='.mup', papersize='a4', landscape=False, signature='signature.eps', bass=None, treble=None, tempo=150):
 
    MUP_VERSION='6.1'
    if landscape:
        pageheight, pagewidth = paper.paper[papersize]
    else:
        pagewidth, pageheight = paper.paper[papersize]
    dicewaltz = common.waltz(dicelist)
    rh = [''] * 178
    lh = [''] * 178

    # "TABLE DE MUSIQUE."

    rh[1] = '8f+;d+;g+;'
    lh[1] = '8f;d;g;'
    rh[2] = '8a;16f#;g;b;g+;'
    lh[2] = lh[86] = lh[121] = lh[133] = '4b-g;8r;'
    rh[3] = '8g+;c+;e+;'
    lh[3] = lh[6] = lh[32] = lh[40] = lh[41] = lh[43] = lh[51] = lh[60] = lh[69] = lh[74] = lh[84] = lh[95] = lh[115] = lh[119] = lh[136] = lh[142] = lh[148] = lh[152] = lh[167] = "4ce;8r;"
    rh[4] = 'ifdef MIDI\n'
    rh[4] += '\t1 1: 8g+;32e+;d+;e+;d+;e+;d+;c+;d+;\n'
    rh[4] += 'else\n' 
    rh[4] += '\t1 1: 8g+;4d+;\n'
    rh[4] += '\tmussym above 1: 2 "tr";\n'
    rh[4] += 'endif'
    lh[4] = '16g-;b-;8g;b-;'
    rh[6] = '8g;c+;e+;'
    rh[7] = '16e+;c+;e+;g+;c++;g+;'
    lh[7] = '4cg;8r;'
    rh[8] = rh[14] = rh[79] = rh[83] = rh[93] = rh[111] = rh[131] = rh[151] = rh[170] = rh[172] = '4c+;8r;'
    lh[8] = lh[14] = lh[79] = lh[83] = lh[93] = lh[111] = lh[131] = lh[151] = lh[170] = lh[172] = '8c;g-;c-;'
    rh[9] = '8c+e+;bd+;8r;'
    lh[9] = '4g;8g-;'
    rh[10] = '16b;a;b;c+;d+;b;'
    lh[10] = lh[34] = '4g;8r;'
    rh[11] = '16e+;c+;b;a;g;f#;'
    lh[11] = lh[21] = lh[36] = lh[62] = lh[106] = lh[110] = lh[118] = lh[134] = lh[147] = lh[159] = lh[169] = '8c;d;d-;'
    rh[12] = rh[54] = rh[124] = rh[130] = '8ec+;;;'
    lh[12] = lh[54] = lh[75] = lh[124] = lh[130] = lh[146] = lh[161] = '8c;;;'
    rh[13] = '8c+ ph;g;e eph;'
    lh[13] = lh[17] = lh[45] = lh[50] = lh[61] = lh[85] = lh[103] = lh[156] = '4eg;8r;'
    rh[15] = '8e+;16g+;e+;8c+;'
    lh[15] = lh[19] = lh[48] = lh[101] = lh[108] = lh[162] = '4cg;8ce;'
    rh[16] = '8a+ ph;f#+;d+ eph;'
    lh[16] = lh[120] = '4df#;8cf;'
    rh[17] = '16c+;g;c+;e+;g;c+;'
    rh[18] = '8g ph;c+;e+ eph;'
    lh[18] = lh[76] = lh[87] = '4ce;8cg;'
    rh[19] = '16e+;c+;8e+;g+;'
    rh[20] = '8g+;16b+;d++;8d+;'
    lh[20] = lh[139] = '4b-;8r;'
    rh[21] = '16c+;e+;g+;d+;a;f#+;'
    rh[22] = '8e+;c+;g;'
    lh[22] = lh[53] = lh[63] = lh[80] = lh[96] = lh[104] = lh[105] = lh[153] = lh[154] = lh[157] = '4c;8r;'
    rh[23] = '16f+;e+;d+;e+;f+;g+;'
    lh[23] = '16f;e;d;e;d;f;'
    rh[25] = '16d;f#;a;d+;f#+;a+;'
    lh[25] = lh[70] = '4d;8c;'
    rh[26] = '8c+e+;;;'
    lh[26] = '16c;e;g;e;c+;c;'
    rh[27] = '16f+;e+;f+;d+;c+;b;'
    lh[27] = lh[113] = lh[166] = '4gb;8r;'
    rh[28] = '16f#+;d+;a;a+;f+;d+;'
    lh[28] = '4ca;8r;'
    rh[29] = '16b;d+;g+;d+;8b;'
    lh[29] = '4g;8g-;'
    rh[31] = '16e+ bm;c+;8g ebm;8e;' 
    lh[31] = lh[64] = '4cg;8;'
    rh[32] = '8g;c+;e+;'
    rh[34] = '16e+;c+;d+;b;8g;'
    rh[35] = '8a;d+;f#+;'
    lh[35] = '4df#;8ca;'
    rh[36] = '16a;e+;d+;g+;f#+;a+;'
    rh[37] = '16g+;b+;g+;d+;8b;'
    lh[37] = lh[46] = lh[47] = lh[55] = lh[155] = lh[163] = '4b-d;8r;'
    rh[38] = '8c+;g;e+;'
    lh[38] = lh[49] = lh[57] = lh[58] = lh[59] = lh[73] = lh[98] = lh[112] = lh[137] = lh[144] = lh[174] = '16ce;g;ce;g;ce;g;'
    rh[39] = '8g+;g;;'
    lh[39] = '16b-;d;g;d;b-;g-;'
    rh[40] = '16c+;b;c+;e+;g;c+;'
    rh[41] = '16c+;b;c+;e+;8g;'
    rh[42] = '16b;c+;d+;b;a;g;'
    lh[42] = lh[128] = lh[158] = '4g-;8r;'
    rh[43] = '8g+;16f+;e+;d+;c+;'
    rh[44] = '8a;16f+;d+;a;b;'
    lh[44] = lh[52] = lh[72] = lh[116] = lh[145] = lh[149] = lh[173] = '4f;8g;'
    rh[45] = '16c+;b;c+;g;e;c;'
    rh[46] = '8g+;16b+;g+;d+;b;'
    rh[47] = '8g+;16;d+;8b+;'
    rh[48] = '8e+;16c+;e+;g+;c++;'
    lh[48] = '4cg;8ce;'

    rh[49] = '8e+ ph;c+;g eph;'
    rh[50] = '8c+;16e+;c+;8g;'
    rh[51] = '16c+;g;e+;c+;g+;e+;'
    rh[52] = '16d+<>;c#+;d+;f+;g+;b;'
    rh[53] = '8c+e+;16;d+f+;8e+g+;'
    rh[55] = '8g+;b+;d+;'
    rh[56] = '16d+;b;8g;r;'
    lh[56] = lh[92] = '4g-g;8g;'
    rh[57] = '8e+;c+;g;'
    rh[58] = '8g+;e+;c+;'
    rh[59] = '8g+;c+;e+;'
    rh[60] = '8g+;16f+;e+;d+;c+;'
    rh[61] = '8c+;16e+;c+;8g+;'
    rh[62] = '16e+;c+;b;g;a;f#;'
    rh[63] = '16e+;c+;b;c+;8g;'
    rh[64] = '16e+;g+;c++;g+;e+;c+;'
    rh[65] = '16d+;a;8d+;f#+;'
    lh[65] = lh[117] = '4df#;8r;'
    rh[66] = '8f#+;a+;f+;'
    lh[66] = '8a;f#;d;\n\t2 2: 8d;d;c;'
    rh[67] = '16c+;b;c+;e+;g;c+;'
    lh[67] = lh[168] = '4ce;8eg;'
    rh[68] = '8g+;16b+;g+;d+;g+;'
    lh[68] = lh[165] = '4b-;8r;'
    rh[69] = '8g+ ph;e+;c+ eph;'
    rh[70] = '8f#+;16a+;f+;d+;f+;'
    rh[71] = '16g+;b+;d++;b+;8g+;'
    lh[71] = lh[88] = lh[143] = lh[176] = '4b-d;8;'
    rh[72] = '16f+;e+;d+;c+;b;d+;'
    rh[73] = '8g+;e+;c+;'
    rh[74] = rh[76] = rh[136] = rh[148] = '16c++;b+;c++;g+;e+;c+;'
    rh[75] = '8d+f#+;;;'
    lh[75] = '8c;;;'
    rh[77] = '16g+;b+;8g+;d+;'
    lh[77] = lh[97] = '4b-d;8b-g;'
    rh[78] = '8c+;c;r;'
    lh[78] = '4c;8c-;'
    rh[80] = 'ifdef MIDI\n'
    rh[80] +='\t1 1: 8d+;32b;a;g;a;8f#+;\n'
    rh[80] += 'else\n'
    rh[80] += '\t1 1: 8d+;a;f#+;\n'
    rh[80] += '\tmussym above 1: 2 "turn";\n'
    rh[80] += 'endif'
    rh[82] = '16d+ bm;b;8g ebm;g+;'
    lh[82] = '4g;8b-d;\n\t2 2: 4b-;8s;'
    rh[84] = '16c+;g;e+;c+;g+;e+;'
    rh[85] = '8c+;e+;g;'
    rh[86] = '8d+;16d+;g+;8b+;'
    rh[87] = '8g+;c+;e+;'
    rh[88] = '16g+;d+;g+;b+;g+;d+;'
    rh[89] = '16f+;e+;8d+;g+;'
    lh[89] = '16f;e;8d;g;'
    rh[90] = '16f#+;a+;d++;a+;f+;a+;'
    lh[90] = '4ca;8;'
    rh[92] = '8bd+;16g+;b+;8d+;'
    rh[95] = '8g+;e+;c+;'
    rh[96] = '8e+;c+;g;'
    rh[97] = '16g+;f#+;g+;d+;b;g;'
    rh[98] = '8c+;g;e+;'
    rh[99] = '8f#+;a+;d+;'
    lh[99] = lh[102] = '4ca;8;'
    rh[101] = '16e+;d+;e+;g+;c++;g+;'
    rh[102] = '16f#+ bm;d+;8a ebm;f+;'
    rh[103] = '16c+;e+;c+;g;8e;'
    rh[104] = '16e+;d+;e+;g+;c++;g+;'
    rh[105] = '8f#+;16a+;f+;d+;f+;'
    rh[106] = '8a;16d+;c+;b;a;'
    rh[108] = '8e+ ph;g+;c++ eph;'
    rh[109] = '16d+;f+;d+;f+;b;d+;'
    lh[109] = '4fa;8gd+;'
    rh[110] = '16b<a>d+;ac+;a<g>c+;gb;g<f>b;f#a;'
    rh[112] = '8e+;c+;g;'
    rh[113] = '8f+;d+;b;'
    rh[114] = '8bd+;;;'
    lh[114] = '8g;;;'
    rh[115] = '16c+;g;e+;c+;g+;e+;'
    rh[116] = '16d+;f+;a+;f+;d+;b;'
    rh[117] = '16d+;a;d+;f#+;a+;f+;'
    rh[118] = '16e+;a+;g+;b+;f#+;a+;'
    rh[119] = '16e+;c+;g+;e+;c++;g+;'
    rh[120] = '8d++;16a+;f#+;d+;a;'
    rh[121] = '8g+;16b+;g+;8d+;'
    rh[122] = '16g+;f#+;g+;b+;8d+;'
    lh[122] = lh[129] = '8b-d;;b-g;'
    rh[125] = '16g+;e+;d+;b;8g;'
    lh[125] = lh[132] = lh[175] = '8g;g-;r;'
    rh[126] = '16c+;g;c+;e+;g+;c+e+;'
    lh[126] = '4e;16e;c;'
    rh[128] = '8b;d+;g+;'
    
    rh[129] = '16a+;g+;f#+;g+;8d+;'
    rh[132] = '8c+e+;16bd+;gb;8g;'
    rh[133] = '8d+;16g+;d+;b;d+;'
    rh[134] = '16a;e+;bd+;ac+;gb;f#a;'
    rh[135] = '8f#+;16;d+;8a+;'
    lh[135] = '8d;;;\n\t2 2: 8c;;;'
    rh[137] = '8c+;g;e+;'
    rh[138] = 'ifdef MIDI\n'
    rh[138] += '\t1 1: 8ad+f#+;32g+;f+;g+;f+;g+;f+;e+;f+;\n'
    rh[138] += 'else\n'
    rh[138] += '\t1 1: 8ad+f#+;4f+;\n'
    rh[138] += '\tmussym above 1: 2 "tr";\n'
    rh[138] += 'endif'
    lh[138] = '16d-;d;c#;d;cn;d;'
    rh[139] = '16g+;b+;g+;b+;8d+;'
    rh[140] = '8a;16;d+;8f#+;'
    lh[140] = '8cf#;;ca;'
    rh[141] = '16d+;e+;f+;d+;c+;b;'
    lh[141] = '4b-g;8g-;'
    rh[142] = '8c+;g;e+;'
    rh[143] = '8g+;16d+;b;8g;'
    rh[144] = '8g+;c+;e+;'
    rh[145] = '16d+;f+;a;d+;b;d+;'
    rh[146] = '8f#d+;d+f#+;f+a+;'
    rh[147] = '16e+;c++;b+;g+;a+;f#+;'
    rh[149] = '16f+;d+;8a;b;'
    rh[150] = 'ifdef MIDI\n'
    rh[150] += '\t1 1: 8gc+e+;32f+;e+;f+;e+;f+;e+;d+;e+;\n'
    rh[150] += 'else\n'
    rh[150] += '\t\t1 1: 8gc+e+;4e+;\n'
    rh[150] += '\t\tmussym above 1: 2 "tr";\n'
    rh[150] += 'endif'
    lh[150] = '16c;b-;c;d;e;f#;'
    rh[152] = '8g+;16f+;e+;d+;c+;'
    rh[153] = '16d+;a;f#+;d+;a+;f+;'
    rh[154] = '16d+;c#+;d+;f#+;a+;f+;'
    rh[155] = '16g+;b+;g+;d+;b;g;'
    rh[156] = '16c+;g;e+;c+;8g+;'
    lh[156] = '4eg;8r;'
    rh[157] = '16e+;d+;e+;g+;c++;g+;'
    rh[158] = '8b;16d+;b;a;g;'
    rh[159] = '16e+;g+;d+;c+;b;a;'
    rh[160] = '16c+;b;c+;e+;g;c+;'
    lh[160] = '4ce;8;'
    rh[161] = '8f#d+;;;'
    rh[162] = '16e+;d+;e+;g+;c++;g+;'
    rh[163] = '16g+;f#+;g+;d+;b;g;'
    rh[164] = '8d+;4g;'
    lh[164] = '16g;f#;g;d;b-;g-;'
    rh[165] = '8d+ ph;b;g eph;'
    rh[166] = '16d+;b+;g+;d+;8b;'
    rh[167] = '8c+;16;d+;8e+;'
    rh[168] = '8g+;16f+;e+;d+;c+;'
    rh[169] = '16e+;g+;d+;g+;a;f#+;'
    rh[171] = '16b;c+;d+;e+;f+;d+;'
    lh[171] = '4g-g;8b-g;'
    rh[173] = '16f+ bm;a+ ebm;8a;16b bm;d+ ebm;'
    rh[174] = '8g;c+;e+;'
    rh[175] = '16e+;c+;b;d+;8g+;'
    rh[176] = '16a+;g+;b+;g+;d+;g+;'


    s = ['//!Mup-Arkkra-{}\n\n'.format(MUP_VERSION)]
    s.append('score \n')
    s.append('\tpagewidth = {}\n'.format(round(pagewidth / 72, 2)))
    s.append('\tpageheight = {}\n'.format(round(pageheight / 72, 2)))
    s.append('\ttime = 3/8\n')
    s.append('\tbeamstyle = 4.\n')
    s.append('\tstaffs = 2\n')
    s.append('\tbrace = 1-2\n')
    s.append('\tbarstyle = 1-2\n')
    s.append('\tvscheme = 2f\n\n')

    s.append('staff 2\n')
    s.append('\tclef = bass\n\n')

    s.append('header\n')
    s.append('\ttitle (12) "Musikalisches W\(u:)rfelspiel"\n')
    s.append('\ttitle (10) "K.V. Anh. 294d (516f), Wien 1787"\n')
    s.append('\ttitle (20) "WALZER"\n')
    if os.path.exists(signature):
        s.append('\tpostscript "{} {} translate ({}) (r) file cvx exec"\n\n'.format(pagewidth-146-36, pageheight-58-18, signature))
    else:
        s.append('\ttitle (14) "" "W.A. Mozart"\n\n')

    s.append('footer\n')
    s.append('\ttitle(10) "Auto-created using DiceWaltz {}"\n\n'.format(common.DICEWALTZ_VERSION))

    s.append('music\n')
    s.append('\tmidi all: 0 "tempo={}";\n'.format(tempo/2))
    if treble:
        s.append('\tmidi 1 1: 0 "channel=1"; 0 "program={}"; // {}\n'.format(treble, instrument[treble]))
    if bass:
        s.append('\tmidi 2 1: 0 "channel=2"; 0 "program={}"; // {}\n'.format(bass, instrument[bass]))
        s.append('\tmidi 2 2: 0 "channel=2";\n')
    s.append('\n')

    for i in range(0,7):
        if not ('ifdef' in rh[dicewaltz[i]]):
            rh[dicewaltz[i]] = '\t1 1: ' + rh[dicewaltz[i]]
        s.append(rh[dicewaltz[i]]+'\n')
        s.append('\t2 1: '+lh[dicewaltz[i]]+'\n')
        if i == 6:
            s.append('\tbar ending "1."')
        else:
            s.append('\tbar')
        s.append('  // dice={} ; table={}\n\n'.format(dicelist[i], dicewaltz[i]))

    s.append('\t1 1: 4gbd+g+;8r;\n')
    s.append('\t2 1: 8g-;16g;fn;e;d;\n')
    s.append('\trepeatend ending "2."\n')
    s.append('\t1 1: 4gbd+g+;8r;\n')
    s.append('\t2 1: 8g-;16b;g;f#;e;\n')
    s.append('\trepeatstart endending')
    s.append('  // dice={} ; table={}\n\n'.format(dicelist[7], dicewaltz[7]))

    for i in range(8,16):
        if not ('ifdef' in rh[dicewaltz[i]]):
            rh[dicewaltz[i]] = '\t1 1: ' + rh[dicewaltz[i]]
        s.append(rh[dicewaltz[i]]+'\n')
        s.append('\t2 1: '+lh[dicewaltz[i]]+'\n')
        if i == 15:
            s.append('\trepeatend')
        else:
            s.append('\tbar')
        s.append('  // dice={} ; table={}\n\n'.format(dicelist[i], dicewaltz[i]))

    s.append('\n')
    return ''.join(s)



