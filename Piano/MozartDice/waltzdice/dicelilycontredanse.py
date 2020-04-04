# coding: latin-1

"""
CONTREDANSE VERSION
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
THIS VERSION MODIFIED BY ROBIN NEWMAN TO USE CONTREDANSE DATA INSTEAD OF MINUET
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

    lh[1] = lh[10] = lh[12] = lh[14] = lh[24] = lh[32] = lh[42] = lh[48] = lh[64] = lh[68] =lh[69] = lh[80] = lh[81] = lh[85] = lh[87] = lh[88] = lh[103] = lh[114] = lh[134] = lh[152] = lh[165] ="c4 r "
    rh[1] = "g''8[ g'' e'' c'' ] "
    lh[2] = lh[8] = lh[17] = lh[86] = "g,4 g, "
    rh[2] = "d''8[ f'' b' d'' ] "
    lh[3] = "< b, g > 4 g, "
    rh[3] = "\\acciaccatura a''8 g''8 b'' 16 g'' d''4 "
    lh[4] = lh[21] = lh[22] = lh[43] = "d4 <c d> "
    rh[4] = "d' 8 [d'' fis'' a''] "
    lh[5] = lh[15] = lh[20] = lh[35] = lh[41] = lh[47] = lh[65] = lh[74] = lh[98] = lh[118] = lh[122] = lh[127] = lh[146] = lh[158] = lh[171] ="c4 c, "
    rh[5] = rh[20] = rh[41] = rh[47] = rh[74] = rh[98] = rh[118] = rh[127] = rh[146] = rh[171] = "c''4 c' "
    lh[6] = lh[95] = lh[104] = lh[108] = lh[112] = lh[123] = lh[129] = lh[141] = lh[157] = lh[159] = "g4 g, "
    rh[6] = "d''8 d''16 b' g'8 a'16 b' "
    lh[7] = lh[13] = lh[26] = lh[29] = lh[33] = lh[36] = lh[105] = lh[119] = lh[135] = lh[143] = lh[162] = lh[163] = lh[175] = "c4 c "
    rh[7] = "c''8[ c'' e'' e''] "
    rh[8] = "d''8 [f'' b' d''] "
    lh[9] = lh[51] = lh[76] = lh[126] = lh[170] = "g,4 g16 f e d "
    rh[9] = rh[46] = rh[84] = "d''8 b' g'4 "
    rh[10] = "g''8 [e'' c'' c''] "
    lh[11] = lh[16] = lh[44] = lh[58] = lh[83] = lh[89] = lh[102] = lh[115] = lh[130] = lh[167] = lh[172] = "{g,4 g16 f e d}{g,4 g,16 a, b, cis} "
    rh[11] = rh[16] = rh[44] = rh[58] = rh[83] = rh[89] = rh[102] = rh[115] = rh[130] = rh[167] = rh[172] = "{<g' b' g''>4 r}{<g' b' g''>4 r} "
    rh[12] = rh[163] = "c''16 b' c'' d'' c''8 c'' "
    rh[13] = "c''8 [ e'' g'' e''] "
    rh[14] = "g''8 [ e'' c'' c'' ] "
    rh[15] = "c''16 e'' g'' e'' c''8 c'' "
    rh[17] = "d''16 e'' f'' e'' f'' d'' c'' b' "
    lh[18] = lh[23] = lh[73] = lh[78] = lh[137] = lh[161] = lh[168] = "c4 d "
    rh[18] = "e''8 [ c'' b' a'] "
    lh[19] = lh[173] = "g,4 r "
    rh[19] = "d''16 b' c'' a' g' g'' f'' d'' "
    rh[21] = "d'8 fis'16 a' d'' fis'' a'' fis'' "
    rh[22] = "a''16 b'' a'' g'' \\acciaccatura g''8 fis''8 e''16 d'' "
    rh[23] = "e''16 c'' e'' c'' a'8 fis'' "
    rh[24] = "c'''16 b'' a'' g'' f'' e'' d'' c'' "
    lh[25] = "d 4 <c d> "
    rh[25] = "d'' 8 [fis'' a'' fis''] "
    rh[26] = "e''8 [c'' g'' e''] "
    lh[27] = lh[30] = "<b, g>4 b, "
    rh[27] = "a''16 g'' fis'' g'' d'' g'' d'' b' "
    lh[28] = lh[39] = "<b, g>4 r "
    rh[28] = rh[39] = "g''16 fis'' e'' d'' c'' b' a' g' "
    rh[29] = "e''16 c'' g' c'' e'' c'' g'' e'' "
    rh[30] = "g''8 [d'' d''(dis'')] "
    lh[31] = "c8 [ c c c ] "
    rh[31] = "c''8 c''16 e'' f'' e'' g'' e'' "
    rh[32] = "c'''8 [g'' e'' d'' ] "
    rh[33] = "c''16 c' e' g' c'' e'' g'' c''' "
    lh[34] = "g8 r g, r "
    rh[34] = "g''16 b'' g'' d'' b' g'' d'' b' "
    rh[35] = "c''16 d'' e'' d'' c'' e' g' c'' "
    rh[36] = "c''8 c'16 e' g'8 c''16 e'' "
    lh[37] = "c16 c' b c' c4 "
    rh[37] = rh[139] = "c''8 e'' g'4 "
    lh[38] = "c8 r c r "
    rh[38] = "c''16 c''' g'' e'' c'' g'' e'' c'' "
    lh[40] = "g8 [g, g, g,] "
    rh[40] = "f''16 e'' d'' c'' b' c'' d'' b' "
    rh[42] = rh[48] = "c''8 c''16 e'' g''8 g''16 e'' "
    rh[43] = "d''16 cis'' d'' e'' fis'' g'' a'' fis'' "
    lh[45] = "c16 d c b, c d e c "
    rh[45] = "g''8 [c''' g'' e''] "
    lh[46] = "g16 g, b, d g f e d "
    lh[49] = "c4 d8 d, "
    rh[49] = "e''16 c'' b' a' g' b' fis' a' "
    lh[50] = "d8 r <c d> r "
    rh[50] = "d'16 fis' a' d'' fis'' a'' fis'' d'' "
    rh[51] = "b'16 g'' d'' b' g'4 "
    lh[52] = lh[176] = "b,16 g, b, d g d b, g, "
    rh[52] = "g''8 [ b'' g'' d'' ] "
    lh[53] = "g,16 b, d b, f d b, g, "
    rh[53] = "g''8 [ f'' d'' b'] "
    lh[54] = lh[59] = lh[72] = lh[94] = lh[138] = "c16 e g e c e g e "
    rh[54] = rh[80] = "c''8 [ e'' e'' e'' ] "
    lh[55] = "b,16 d g d b,8 b, "
    rh[55] = "g''8 [ g'' b'' g'' ] "
    lh[56] = "d8 fis16 a d' a fis d "
    rh[56] = "d''8 [ d'' fis'' fis'' ] "
    lh[57] = lh[60] = "g8 g,16 a, b, c d b, "
    rh[57] = "f''8 [ f'' d'' d'' ] "
    rh[59] = rh[70] = rh[75] = "c''4 c''8 c'' "
    rh[60] = "f''8 [ f'' d'' d''] "
    lh[61] = lh[155] = "d16 fis a fis d8 c "
    rh[61] = "d''8 [ d'' fis'' a'' ] "
    lh[62] = "c16 g, e c c' g e c "
    rh[62] = "e''8 [ e'' g'' e'' ] "
    lh[63] = "c16 b, c a, d cis d d, "
    rh[63] = "e''8 [ a'' g'' fis'' ] "
    rh[64] = "g''16 e'' f'' d'' c'' g'' e'' c'' "
    rh[65] = "c''8 c'' c''4 "
    lh[66] = lh[77] = lh[111] = lh[144] = "d4 d "
    rh[66] = "fis''8 fis''16 a'' d'''8 a''16 fis'' "
    lh[67] = lh[125] = lh[153] = lh[154] = "g4 b, "
    rh[67] = rh[79] = "g''8 b''16 g'' d''8 g''16 d'' "
    rh[68] = rh[85] = "g''8 g''16 e'' c''8 c''16 e'' "
    rh[69] = "c''8 g'16 e' c'8 c' "
    lh[70] = lh[75] = "c16 g, a, b, c g, a, b, "
    lh[71] = "c16c, e, g, c e g e "
    rh[71] = "<e' c''>8 <e'c''> <e' c''>4 "
    rh[72] = "e''4 c''8 c'' "
    rh[73] = "e''8 [ g'' fis'' a'' ] "
    rh[76] = "d''16 c'' b' a' g'4 "
    rh[77] = rh[111] = rh[144] = "d'8 fis'16 a' d''8 fis'' "
    rh[78] = "e''8 e''16 g'' fis''8 fis''16 a'' "
    lh[79] = "<b, g>4 g, "
    rh[81] = rh[97] = rh[142] = "c''8 [ g' c'' e'' ] "
    lh[82] = "d16 fis a g fis d e fis "
    rh[82] = "d''4 d''8 d'' "
    lh[84] = "g,16 b, d g g, f e d "
    rh[86] = "f''8 f''16 d'' b'8 b'16 d'' "
    rh[87] = "e''8 c''16 e'' g''8 e''16 c'' "
    rh[88] = "c''8 e''16 g'' c''' g'' e'' c'' "
    lh[90] = "g8 g,16 a, b, a, b, g, "
    rh[90] = rh[141] = "d''8 [ b' g' b' ] "
    lh[91] = "b,16 d g d b, g, a, b, "
    rh[91] = "g''4 b''8 g'' "
    lh[92] = lh[156] = "g4 r "
    rh[92] = rh[123] = "g''8 [ d'' b' g' ] "
    lh[93] = "d16 fis a fis c fis a c "
    rh[93] = "d''4 a''8 fis'' "
    rh[94] = "c''8 [ e'' g'' e'' ] "
    rh[95] = "f''8 [ d'' g'' e'' ] "
    lh[96] = "g16 d b, g, g d b, g, "
    rh[96] = "d''8 [ d'' b' b' ] "
    lh[97] = lh[110] = "e8 e16 e e8 c "
    lh[99] = lh[101] = lh[106] = lh[128] = lh[139] = "c16 g e g c g e g "
    rh[99] = rh[128] = "g'8 c''4 e''8 "
    lh[100] = "g, 4 g, "
    rh[100] = "b'16 a'g'a'b'c'' d'' b' "
    rh[101] = rh[106] = rh[138] = "g''8 e''4 c''8 "
    rh[103] = "g''16 c''' g'' f'' e'' c'' e'' g'' "
    rh[104] = "g''8 d'''16 b'' g''4 "
    rh[105] = "c''16 b' c'' d'' e'' d'' e'' f'' "
    lh[107] = "b,16 d g d g f e d "
    rh[107] = "d''8 b'4 g'8 "
    rh[108] = "f''16 a'' f'' d'' b' d'' b' g' "
    lh[109] = lh[131] = "g,16 d b, d g, d b, d "
    rh[109] = "d''8 f''4 b'8 "
    rh[110] = "c''8 [ e'' c'' g' ] "
    rh[112] = "f''8 [ d'' b' g' ]  "
    lh[113] = "c8 c16 c c8 c "
    rh[113] = rh[122] = "c''8 [ g' e' c' ] "
    rh[114] = "g''8 a''16 g'' f'' e'' d'' c'' "
    lh[116] = "d8 cis 16 d c d c d "
    rh[116] = "d''8 fis''4 a''8 "
    lh[117] = "d16 a fis a d a fis a "
    rh[117] = "a''8 fis''4 d''8 "
    rh[119] = "g''8 [ c''' g'' e'' ] "
    lh[120] = lh[136] = lh[147] = lh[148] = "d4 fis "
    rh[120] = "d''16 e'' fis'' g'' a'' b'' c''' a'' "
    lh[121] = "c4 g, "
    rh[121] = "c''8 e''16 c'' g'4 "
#lh[124] alterd from a4 to g4 first note
    lh[124] = "g4 g, "
    rh[124] = "b'8 [ d'' g'' b'' ] "
    rh[125] = "b''16 d''' c''' b'' a'' g'' fis'' g'' "
    rh[126] = "b'8 d'' g'4 "
    rh[129] = "f''8 [ d'' b' g' ] "
    rh[131] = "f''8 d''4 b'8 "
    lh[132] = "c16 a fis a a, d c d "
    rh[132] = rh[168] = "e''8 c''4 a'16 fis' "
    lh[133] = "b,16 d g d b, d g d "
    rh[133] = "d''8 g''4 b''8 "
    rh[134] = "c''16 e'' g'' e'' c'' g' c'' e'' "
    rh[135] = "e''8 g'' f''16 e'' d'' c'' "
    rh[136] = "d''8 fis''16 a'' d'''8 d''' "
    rh[137] = "e''8 c''' b''16 a'' g'' fis'' "
    lh[140] = "d16 b g b d b g b "
    rh[140] = "g''8 d''4 b'8 "
    lh[142] = "c8 c16 c c8 g, "
    rh[143] = "e''8 [ c'' a' fis' ] "
    lh[145] = lh[150] = lh[151] = lh[174] = "c16 e g e c4 "
    rh[145] = "<g e' c''>4 \\arpeggio c''16 d'' e'' f'' "
    rh[147] = "d''16 e'' fis'' g'' a'' fis'' e'' d'' "
    rh[148] = "a''16 g'' a'' fis'' d''8 e''16 fis'' "
    lh[149] = "d4 r "
    rh[149] = "d'8 d'' 4 fis''16 a'' "
    rh[150] = "g''8 e'' c''16 e'' g'' e'' "
    rh[151] = "c''4 e''8 g'' "
    rh[152] = "g''8 c'''16 g'' e''8 c'' "
    rh[153] = "g''16 a'' b'' c''' d''' b'' a'' g'' "
    rh[154] = "f''8 [ d'' c'' b' ] "
    rh[155] = "a''4 g''16 fis'' e'' d'' "
    rh[156] = "g'' 8 b''4 g''16 d'' "
    rh[157] = "g''16 a'' b'' c''' d'''4 "
    rh[158] = "c''16 d'' e'' f'' g'' e'' d'' c'' "
    rh[159] = "d''8 f''4 d''16 b' "
    lh[160] = "g,16 b, d b, g,4 "
    rh[160] = "d''8 b' g'16 b' d'' b' "
    rh[161] = "e''16 g'' e'' c'' b' a' g' fis' "
    rh[162] = "g''8 c''' \\acciaccatura f''8 e'' d''16 c'' "
    lh[164] = "g,16 a, b, c d e f d "
    rh[164] = "b'8 [ b' g' g' ] "
    rh[165] = "c''8 e''16 c'' g'8 g' "
    lh[166] = "c4 e16 g e c "
    rh[166] = "g''16 a'' g'' f'' e''8 e'' "
    lh[169] = "c4 c16 e g e "
    rh[169] = "c''16 b' c'' d'' e''8 e'' "
    rh[170] = "b'16 g' b' d'' g''4 "
    rh[173] = "b'16 g' d' b g g' b' d'' | "
    rh[174] = "c''4 e''8 g'' | "
    rh[175] = "c'''8 [ g'' e'' c'' ] | "
    rh[176] = "g''8 b'' g''4 | "

    dicewaltz = common.contredanse(dicelist)
    s = []
    s.append('\\version "{}"\n'.format(LILYPOND_VERSION))
    s.append('\\pointAndClickOff\n\n')
    s.append('\\header {\n')
    s.append('  dedication = "{}"\n'.format(common.DICEWALTZ_DESCRIPTION))
    s.append('  title = "Contredanse"\n')
    #if os.path.exists(signature):
     #   s.append('  composer = \markup {\epsfile #X #20 #"')
      #  s.append(signature)
      #  s.append('"}\n')

    #else:
     #   s.append('  composer = "W.A. Mozart"\n')
    #s.append('  copyright = "Auto-created using DiceContredanse {}"\n'.format(common.CONTREDANSE_VERSION))
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
    s.append('DiceContredanse = {\n')
    s.append('  \\new PianoStaff <<\n')
    s.append('    \\new Staff = "RH {}"'.format(instrument[treble]))
    s.append(' {\n')
    if treble:
        s.append('      \\set Staff.midiInstrument = #"{}"\n'.format(instrument[treble]))
    s.append('      \\clef treble\n')
    s.append('      \\time 2/4\n')
    s.append('      \\key c \major\n')
    s.append('      {\\tempo 8=' + '{}'.format(tempo) + '}\n')
    s.append('      \\repeat volta 2 {\n')
    for n in range (0, 7):
        music = rh[dicewaltz[n]]
        s.append('        {} |\n'.format(music))
    s.append('      }\n')
    s.append('      \\alternative {\n')
    s.append('        {}\n'.format(rh[11]))
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
    s.append('      \\time 2/4\n')
    s.append('      \\key c \\major\n')
    s.append('      \\repeat volta 2 {\n')
    for n in range (0, 7):
        music = lh[dicewaltz[n]]
        s.append('        {} |\n'.format(music))
    s.append('      }\n')
    s.append('      \\alternative {\n')
    s.append('        {}\n'.format(lh[11]))
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
    s.append('  \\DiceContredanse\n')
    s.append('  \\layout {#(layout-set-staff-size 18)}\n')
    s.append('}\n\n')
    s.append('\\include "articulate.ly"\n')
    s.append('\\score {\n')
    s.append('  \\unfoldRepeats \\articulate <<\n')
    s.append('    \\DiceContredanse	\n')
    s.append('  >>\n')
    s.append('  \\midi {}\n')
    s.append('}\n')
    s.append('\n')
    return ''.join (s)


################################################################
	
