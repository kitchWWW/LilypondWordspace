#!/bin/bash
#./dicewaltz.py -d 2 -e lily -o playme.ly
#./dicewaltz.py -d 2 -e lily -o playme2.ly -c 2
#lilypond -fpng playme.ly
#echo cropping png....
#convert playme.png -gravity  North -chop 0x54 - | convert - -gravity South -chop 0x540 playmecrop.png
#lilypond -fpng playme2.ly
#echo cropping png....
#convert playme2.png -gravity  North -chop 0x54 - | convert - -gravity South -chop 0x540 playme2crop.png
echo starting browser....
#netsurf file:////home/pi/DiceWaltz-1.2.1WithContredanse/playmecrop.png &
midori -e Fullscreen -a  file:////home/pi/DiceWaltz-1.2.1WithContredanse/playmecrop.png &
sleep 7
timidity /home/pi/DiceWaltz-1.2.1WithContredanse/playme.midi
#netsurf file:////home/pi/DiceWaltz-1.2.1WithContredanse/playme2crop.png &
midori -e Fullscreen -a file:////home/pi/DiceWaltz-1.2.1WithContredanse/playme2crop.png &
sleep 3
timidity /home/pi/DiceWaltz-1.2.1WithContredanse/playme2.midi
sleep 2
#killall netsurf
killall midori
