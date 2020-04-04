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
from . import dicemidi
instrument = dicemidi.instrument

################################################################

# lilypond engraver
def out(dicelist, ext='.ly', papersize='a4', landscape=False, signature='signature.eps', bass=0, treble=0, tempo=150):
    LILYPOND_VERSION='2.14.2'
    rh =[''] * 177
    lh =[''] * 177
    #"TABLE DE MUSIQUE."
    rh[1] = "f''8 d'' g''"
    lh[1] = "f8 d g"
    rh[2] = "a'8 fis'16 g' b' g''"
    lh[2] = lh[86] = lh[121] = lh[133] = "<b, g>4 r8"
    rh[3] = "g''8 c'' e''"
    lh[3] = lh[6] = lh[32] = lh[40] = lh[41] = lh[43] = lh[51] = lh[60] = lh[69] = lh[74] = lh[84] = lh[95] = lh[115] = lh[119] = lh[136] = lh[142] = lh[148] = lh[152] = lh[167] = "<c e>4 r8"
    rh[4] = "g''8 d''4\\trill"
    lh[4] = "g,16 b, g8 b,"
    rh[5] = rh[24] = rh[30] = rh[33] = rh[81] = rh[91] = rh[94] = rh[100] = rh[107] = rh[123] = rh[127] = "{ <g' b' d'' g''>4 r8 } { <g' b' d'' g''>4 r8 }"
    lh[5] = lh[24] = lh[30] = lh[33] = lh[81] = lh[91] = lh[94] = lh[100] = lh[107] = rh[123] = lh[127] = "{ g,8 g16 f! e d } { g,8 b16 g fis e }"
    rh[6] = "g'8 c'' e''"
    rh[7] = "e''16 c'' e'' g'' c''' g''"
    lh[7] = "<c g>4 r8"
    rh[8] = rh[14] = rh[79] = rh[83] = rh[93] = rh[111] = rh[131] = rh[151] = rh[170] = rh[172] = "c''4 r8"
    lh[8] = lh[14] = lh[79] = lh[83] = lh[93] = lh[111] = lh[131] = lh[151] = lh[170] = lh[172] = "c8 g, c,"
    rh[9] = "<c'' e''>8 <b' d''> r"
    lh[9] = "g4 g,8"
    rh[10] = "b'16 a' b' c'' d'' b'"
    lh[10] = lh[34] = "g4 r8"
    rh[11] = "e''16 c'' b' a' g' fis'"
    lh[11] = lh[21] = lh[36] = lh[62] = lh[106] = lh[110] = lh[118] = lh[134] = lh[147] = lh[159] = lh[169] = "c8 d d,"
    rh[12] = rh[54] = rh[124] = rh[130] = "<e' c''>8 <e' c''> <e' c''>"
    lh[12] = lh[54] = lh[75] = lh[124] = lh[130] = lh[146] = lh[161] = "c8 c c"
    rh[13] = "c''8( g' e')"
    lh[13] = lh[17] = lh[45] = lh[50] = lh[61] = lh[85] = lh[103] = lh[156] = "<e g>4 r8"
    rh[15] = "e''8 g''16 e'' c''8"
    lh[15] = lh[19] = lh[48] = lh[101] = lh[108] = lh[162] = "<c g>4 <c e>8"
    rh[16] = "a''8( fis'' d'')"
    lh[16] = lh[120] = "<d fis>4 <c fis>8"
    rh[17] = "c''16 g' c'' e'' g' c''"
    rh[18] = "g'8( c'' e'')"
    lh[18] = lh[76] = lh[87] = "<c e>4 <c g>8"
    rh[19] = "e''16 c'' e''8 g''"
    rh[20] = "g''8 b''16 d''' d''8"
    lh[20] = lh[139] = "b,4 r8"
    rh[21] = "c''16 e'' g'' d'' a' fis''"
    rh[22] = "e''8 c'' g'"
    lh[22] = lh[53] = lh[63] = lh[80] = lh[96] = lh[104] = lh[105] = lh[153] = lh[154] = lh[157] = "c4 r8"
    rh[23] = "f''16 e'' d'' e'' f'' g''"
    lh[23] = "f16 e d e f g"
    rh[25] = "d'16 fis' a' d'' fis'' a''"
    lh[25] = lh[70] = "d4 c8"
    rh[26] = "<c''e''>8 <c'' e''> <c'' e''>"
    lh[26] = "c16 e g e c' c"
    rh[27] = "f''16 e'' f'' d'' c'' b'"
    lh[27] = lh[113] = lh[166] = "<g b>4 r8"
    rh[28] = "fis''16 d'' a' a'' fis'' d''"
    lh[28] = "<c a>4 r8"
    rh[29] = "b'16 d'' g'' d'' b'8"
    lh[29] = "g4 g,8"
    rh[31] = "e''16[ c'' g'8] e''8"
    lh[31] = lh[64] = "<c g>4 <c g>8"
    rh[32] = "g'8 c'' e''"
    rh[34] = "e''16 c'' d'' b' g'8"
    rh[35] = "a'8 d'' fis''"
    lh[35] = "<d fis>4 <c a>8"
    rh[36] = "a'16 e'' d'' g'' fis'' a''"
    rh[37] = "g''16 b'' g'' d'' b'8"
    lh[37] = lh[46] = lh[47] = lh[55] = lh[155] = lh[163] = "<b, d>4 r8"
    rh[38] = "c''8 g' e''"
    lh[38] = lh[49] = lh[57] = lh[58] = lh[59] = lh[73] = lh[98] = lh[112] = lh[137] = lh[144] = lh[174] = "<c e>16 g <c e> g <c e> g"
    rh[39] = "g''8 g' g'"
    lh[39] = "b,16 d g d b, g,"
    rh[40] = "c''16 b' c'' e'' g' c''"
    rh[41] = "c''16 b' c'' e'' g'8"
    rh[42] = "b'16 c'' d'' b' a' g'"
    lh[42] = lh[128] = lh[158] = "g,4 r8"
    rh[43] = "g''8 f''16 e'' d'' c''"
    rh[44] = "a'8 f''16 d'' a' b'"
    lh[44] = lh[52] = lh[72] = lh[116] = lh[145] = lh[149] = lh[173] = "f4 g8"
    rh[45] = "c''16 b' c'' g' e' c'"
    rh[46] = "g''8 b''16 g'' d'' b'"
    rh[47] = "g''8 g''16 d'' b''8"
    rh[48] = "e''8 c''16 e'' g'' c'''"
    rh[49] =    "e''8( c'' g')"
    rh[50] = "c''8 e''16 c'' g'8"
    rh[51] = "c''16 g' e'' c'' g'' e''"
    rh[52] = "d''16( cis'') d'' f'' g' b'"
    rh[53] = "<c'' e''>8 <c'' e''>16 <d'' f''> <e'' g''>8"
    rh[55] = "g''8 b'' d''"
    rh[56] = "d''16 b' g'8 r8"
    lh[56] = lh[92] = "<g, g>4 g8"
    rh[57] = "e''8 c'' g'"
    rh[58] = "g''8 e'' c''"
    rh[59] = "g''8 c'' e''"
    rh[60] = "g''8 f''16 e'' d'' c''"
    rh[61] = "c''8 e''16 c'' g''8"
    rh[62] = "e''16 c'' b' g' a' fis'"
    rh[63] = "e''16 c'' b' c'' g'8"
    rh[64] = "e''16 g'' c''' g'' e'' c''"
    rh[65] = "d''16 a' d''8 fis''"
    lh[65] = lh[117] = "<d fis>4 r8"
    rh[66] = "fis''8  a'' fis''"
    lh[66] = "<< { a8 fis d } \\\\ { d8 d c } >>"
    rh[67] = "c''16 b' c'' e'' g' c''"
    lh[67] = lh[168] = "<c e>4 <e g>8"
    rh[68] = "g''8 b''16 g'' d'' g''"
    lh[68] = lh[165] = "b,4 r8"
    rh[69] = "g''8( e'' c'')"
    rh[70] = "fis''8 a''16 fis'' d'' fis''"
    rh[71] = "g''16 b'' d''' b'' g''8"
    lh[71] = lh[88] = lh[143] = lh[176] = "<b, d>4 <b, d>8 "
    rh[72] = "f''16 e'' d'' c'' b' d''"
    rh[73] = "g''8 e'' c''"
    rh[74] = rh[76] = rh[136] = rh[148] = "c'''16 b'' c''' g'' e'' c''"
    rh[75] = "<d'' fis''>8 <d'' fis''> <d'' fis''>"
    rh[77] = "g''16 b'' g''8 d''8"
    lh[77] = "<b, d>4 <b, g>8 "
    rh[78] = "c''8 c' r"
    lh[78] = "c4 c,8"
    rh[80] = "d''8 a'\\turn fis''"
    rh[82] = "d''16[ b' g'8] g''"
    lh[82] = "<b, g>4 <b, d>8"
    rh[84] = "c''16 g' e'' c'' g'' e''"
    rh[85] = "c''8  e'' g'"
    rh[86] = "d''8 d''16 g'' b''8"
    rh[87] = "g''8 c'' e''"
    rh[88] = "g''16 d'' g'' b'' g'' d''"
    rh[89] = "f''16 e'' d''8 g''"
    lh[89] = "f16 e d8 g"
    rh[90] = "fis''16 a'' d''' a'' fis'' a''"
    lh[90] = "<c a>4 <c a>8"
    rh[92] = "<b'd''>8 g''16 b'' d''8"
    rh[95] = "g''8 e'' c''"
    rh[96] = "e''8 c'' g'"
    rh[97] = "g''16 fis'' g'' d'' b' g'"
    lh[97] = "<b, d>4 <b, g>8"
    rh[98] = "c''8 g' e''"
    rh[99] = "fis''8 a'' d''"
    lh[99] = lh[102] = "<c a>4 <c a>8"
    rh[101] = "e''16 d'' e'' g'' c''' g''"
    rh[102] = "fis''16[ d'' a'8] fis''8 "
    rh[103] = "c''16 e'' c'' g' e'8"
    rh[104] = "e''16 d'' e'' g'' c''' g''"
    rh[105] = "fis''8 a''16 fis'' d'' fis''"
    rh[106] = "a'8 d''16 c'' b' a'"
    rh[108] = "e''8( g'' c''')"
    rh[109] = "d''16 f'' d'' f'' b' d''"
    lh[109] = "<f a>4 <g d'>8"
    rh[110] = "<b' d''>16( <a' c''>) <a' c''>( <g' b'>) <g' b'>( <fis' a'>)"
    rh[112] = "e''8 c'' g'"
    rh[113] = "f''8 d'' b'"
    rh[114] = "<b' d''>8 <b' d''> <b' d''>"
    lh[114] = "g8 g g"
    rh[115] = "c''16 g' e'' c'' g'' e''"
    rh[116] = "d''16 f'' a'' f'' d'' b'"
    rh[117] = "d''16 a' d'' fis'' a'' fis''"
    rh[118] = "e''16 a'' g'' b'' fis'' a''"
    rh[119] = "e''16 c'' g'' e'' c''' g''"
    rh[120] = "d'''8 a''16 fis'' d'' a'"
    rh[121] = "g''8 b''16 g'' d''8"
    rh[122] = "g''16 fis'' g'' b'' d''8"
    lh[122] = lh[129] = "<b, d>8 <b, d> <b, g>"
    rh[125] = "g''16 e'' d'' b' g'8"
    lh[125] = lh[132] = lh[175] = "g8 g, r"
    rh[126] = "c''16 g' c'' e'' g'' <c'' e''>"
    lh[126] = "e4 e16 c"
    rh[128] = "b'8 d'' g''"
    rh[129] = "a''16 g'' fis'' g'' d''8"
    rh[132] = "<c'' e''>8 <b' d''>16 <g' b'> g'8"
    rh[133] = "d''8 g''16 d'' b' d''"
    rh[134] = "a'16 e'' <b' d''> <a' c''> <g' b'> <fis' a'>"
    rh[135] = "fis''8 fis''16 d'' a''8"
    lh[135] = "<< { d8 d d } \\\\ { c8 c c } >> "
    rh[136] = "c'''16 b'' c''' g'' e'' c''"
    rh[137] = "c''8 g' e''"
    rh[138] = "<a' d'' fis''>8 fis''4\\trill"
    lh[138] = "d,16 d cis d c d"
    rh[139] = "g''16 b'' g'' b'' d''8 "
    rh[140] = "a'8 a'16 d'' fis''8"
    lh[140] = "<c fis>8 <c fis> <c a>"
    rh[141] = "d''16 e'' f'' d'' c'' b'"
    lh[141] = "<b, g>4 g,8"
    rh[142] = "c''8 g' e''"
    rh[143] = "g''8 d''16 b' g'8"
    rh[144] = "g''8 c'' e''"
    rh[145] = "d''16 f'' a' d'' b' d''"
    rh[146] = "<fis' d''>8 <d'' fis''> <fis'' a''>"
    rh[147] = "e''16 c''' b'' g'' a'' fis''"
    rh[148] = "c'''16 b'' c''' g'' e'' c''"
    rh[149] = "f''16 d'' a'8  b'"
    rh[150] = "<g' c'' e''>8 e''4\\trill"
    lh[150] = "c16 b, c d e fis"
    rh[152] = "g''8 f''16 e'' d'' c''"
    rh[153] = "d''16 a' fis'' d'' a'' fis''"
    rh[154] = "d''16 cis'' d'' fis'' a'' fis''"
    rh[155] = "g''16 b'' g'' d'' b' g'"
    rh[156] = "c''16 g' e'' c'' g''8"
    rh[157] = "e''16 d'' e'' g'' c''' g''"
    rh[158] = "b'8 d''16 b' a' g'"
    rh[159] = "e''16 g'' d'' c'' b' a'"
    rh[160] = "c''16 b' c'' e'' g' c''"
    lh[160] = "<c e>4 <c e>8"
    rh[161] = "<fis' d''>8 <fis' d''> <fis' d''>"
    rh[162] = "e''16 d'' e'' g'' c''' g''"
    rh[163] = "g''16 fis'' g'' d'' b' g'"
    rh[164] = "d''8 g'4"
    lh[164] = "g16 fis g d b, g,"
    rh[165] = "d''8( b' g')"
    rh[166] = "d''16 b'' g'' d'' b'8"
    rh[167] = "c''8 c''16 d'' e''8"
    rh[168] = "g''8 f''16 e'' d'' c''"
    rh[169] = "e''16 g'' d'' g'' a' fis''"
    rh[171] = "b'16 c'' d'' e'' f'' d''"
    lh[171] = "<g, g>4 <b, g>8"
    rh[173] = "f''16[ a''] a'8 b'16[ d'']"
    rh[174] = "g'8 c'' e''"
    rh[175] = "e''16 c'' b' d'' g''8"
    rh[176] = "a''16 g'' b'' g'' d'' g''"

    dicewaltz = common.waltz(dicelist)
    s = []
    s.append('\\version "{}"\n'.format(LILYPOND_VERSION))
    s.append('\\pointAndClickOff\n\n')
    s.append('\\header {\n')
    s.append('  dedication = "{}"\n'.format(common.DICEWALTZ_DESCRIPTION))
    s.append('  title = "Waltz"\n')
    #if os.path.exists(signature):
        #s.append('  composer = \markup {\epsfile #X #20 #"')
        #s.append(signature)
        #s.append('"}\n')

    #else:
        #s.append('  composer = "W.A. Mozart"\n')
    #s.append('  copyright = "Auto-created using DiceWaltz {}"\n'.format(common.DICEWALTZ_VERSION))
    s.append('}\n\n')
    s.append('\\paper {\n')
    s.append('  #(set-paper-size "{}"'.format(papersize))
    if landscape:
        s.append(" 'landscape)\n")
    else:
        s.append(')\n')
    s.append('  top-margin = 2\\cm\n')
    s.append('}\n\n')

    s.append('%DICE: ')
    for n in range(15):
        s.append('{}, '.format(dicelist[n]))
    s.append('{}\n'.format(dicelist[15]))
    s.append('%TABLE DE MUSIQUE: ')
    for n in range(15):
        s.append('{}, '.format(dicewaltz[n]))
    s.append('{}\n'.format(dicewaltz[15]))
    s.append('DiceWaltz = {\n')
    s.append('  \\new PianoStaff <<\n')
    s.append('    \\new Staff = "RH {}"'.format(instrument[treble]))
    s.append(' {\n')
    if treble:
        s.append('      \\set Staff.midiInstrument = #"{}"\n'.format(instrument[treble]))
    s.append('      \\clef treble\n')
    s.append('      \\time 3/8\n')
    s.append('      \\key c \major\n')
    s.append('      {\\tempo 8=' + '{}'.format(tempo) + '}\n')
    s.append('       \\repeat volta 2 {\n')
    for n in range (0, 7):
        music = rh[dicewaltz[n]]
        s.append('        {} |\n'.format(music))
    s.append('      }\n')
    s.append('      \\alternative {\n')
    s.append('        {}\n'.format(rh[5]))
    s.append('      }\n\n')
    s.append('      \\repeat volta 2 {\n')
    for n in range (8, 16):
        music = rh[dicewaltz[n]]
        s.append('        {} |\n'.format(music))
    s.append('      }\n')
    s.append('    }\n\n')
    s.append('    \\new Staff = "LH {}"'.format(instrument[bass]))
    s.append(' {\n')
    if bass:
        s.append('      \\set Staff.midiInstrument = #"{}"\n'.format(instrument[bass]))
    s.append('      \\clef treble\n')
    s.append('      \\clef bass\n')
    s.append('      \\time 3/8\n')
    s.append('      \\key c \\major\n')
    s.append('      \\repeat volta 2 {\n')
    for n in range (0, 7):
        music = lh[dicewaltz[n]]
        s.append('        {} |\n'.format(music))
    s.append('      }\n')
    s.append('      \\alternative {\n')
    s.append('        {}\n'.format(lh[5]))
    s.append('      }\n\n')
    s.append('      \\repeat volta 2 {\n')
    for n in range (8, 16):
        music = lh[dicewaltz[n]]
        s.append('        {} |\n'.format(music))
    s.append('      }\n')
    s.append('    }\n')
    s.append('  >>\n')
    s.append('}\n\n')
    s.append('\\score {\n')
    s.append('  \\DiceWaltz\n')
    s.append('  \\layout {#(layout-set-staff-size 18)}\n')
    s.append('}\n\n')
    s.append('\\include "articulate.ly"\n')
    s.append('\\score {\n')
    s.append('  \\unfoldRepeats \\articulate <<\n')
    s.append('    \\DiceWaltz\n')
    s.append('  >>\n')
    s.append('  \\midi {}\n')
    s.append('}\n')
    s.append('\n')
    return ''.join (s)


################################################################

