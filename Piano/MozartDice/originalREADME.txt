ABOUT DiceWaltz-2.0.1
=====================

DiceWaltz is my Python implementation of Mozart's "Musikalisches 
Würfelspiel K.V. Anhang 294d (516f)"

Mozart's own instruction is: "To compose, without the least knowledge of 
music, so many German waltzes or ländler as one pleases, by throwing a 
certain number with two dice."

Look here: 
http://imslp.org/wiki/Musikalisches_W%C3%BCrfelspiel,_K.516f_%28Mozart,_Wolfgang_Amadeus%29

This game has inspired many people to develop a computer version. If you 
look around on the internet and search for "Mozart" and "Dice game" you 
will find several versions.

My version does not have a fancy GUI interface (yet) but has several other 
features that distinguish it from others:

- Works with Python 2.7 and 3.x and is not limited to one Operating System

- Exports to MUP, ABC, or LilyPond text-based source formats. Use mup, 
abcm2ps, or lilypond to print high quality music scores or produce MIDI 
files

- Scores can be prepared for different paper sizes and for portrait or 
landscape orientation 

- simulate two 6-sided dice or one virtual 11-sided dice (values 2 to 12).
(Note that when simulating 2 real dice not every value from 2 to 12 has 
the same chance! I don't know if Mozart was aware of that.)


USAGE:
======
I'm assuming you have a recent version (>2.6) of Python installed.
Now go inside the DiceWaltz-2.0.1 directory and run: 

	python dicewaltz.py -h

Then you should see this:


usage: dicewaltz.py [-h] [-d DICEMODE] [-e EXPORT] [-i FILE] [-l] [-o FILE]
                    [-p PAPERSIZE] [-s EPSFILE] [-t INSTRUMENT]
                    [-b INSTRUMENT] [-v]

Musikalisches Würfelspiel K.V. Anhang 294d (516f), Wien 1778

optional arguments:
  -h, --help            show this help message and exit
  -d DICEMODE, --dicemode DICEMODE
                        DICEMODE=0: read dice values from standard input,
                        DICEMODE=1: randomize numbers between 2 and 12,
                        DICEMODE=2: simulate throwing two 6-sided dice
  -e EXPORT, --export EXPORT
                        use EXPORT engraver syntax (lilypond | lily | ly | abc
                        | mup)
  -i FILE, --infile FILE
                        read dice sequence from FILE (*.dice)
  -l, --landscape       use landscape paper orientation
  -o FILE, --outfile FILE
                        write to FILE (*.mup | *.ly | *.abc)
  -p PAPERSIZE, --papersize PAPERSIZE
                        PAPERSIZE=(a4 | letter |...)
  -s EPSFILE, --signature EPSFILE
                        use EPSFILE as Mozart's signature
  -t INSTRUMENT, --treble INSTRUMENT
                        Use Midi INSTRUMENT name or number (0-127) for treble
                        part
  -b INSTRUMENT, --bass INSTRUMENT
                        Use Midi INSTRUMENT name or number (0-127) for bass
                        part
  -v, --version         show program's version number and exit

