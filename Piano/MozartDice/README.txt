To use this software on a Raspberry Pi you must fist install lilypond and timidity.
sudo apt-get update
sudo apt-get install lilypond timidity
to use the goall.sh script you will also need to install imagemagick
This provides the convert progam which is used to crop images
sudo apt-get install imagemagick

This version of DiceWaltz has been modified to include the facility
to play the Contredanse as well as the Waltz
This is achieved with the addition of a new parameter -c with
value 1 (default) or 2. 1 generates the original Waltz as in 
Martin's original version. 2 generates the Contredanse implemented
by Robin Newman.
The implementation only works for lilypond output,
and has not been implemented for ABC or MUP output.
Logic in the program prevents these choices for output if c is  set to 2.
The original README.tst gives details of the other input parameters.

This version is also adjusted to use lilypond version 2.14.2
which is the curent version availael to the Raspberry Pi.

The shell program goal.sh invoked with ./goall.sh will generate a new Waltz
and Contredanse and play them one after the other using Midori to display the
score and timidity to play the midi file. You can adjust the sound output to
use either HDMI or the 3.5mm jack plug audio output on the Pi.
Use amixer cset numid = 3 2 for HDMI or amixer cset numid = 3 1 for the
3.5mm jack plug output.

The files playme.ly and playme2.ly contain the source music files generated
by the goall script. These are overwritten each time the script is run.
The script goplay.sh will play the current files without recreating new ones.
usage ./goplay.sh

If you wan to leave full screen in Midori, then right click on the Midori
screen and choose Leave Full Screen.

YOu can change comments in the scripts to use Netsurf if you prefer.

Robin Newman,. August 2013
 
