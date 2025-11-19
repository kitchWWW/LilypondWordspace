import os
import random

toLily = ["c", "cis", "d", "dis", "e", "f", "fis", "g", "gis", "a", "ais", "b"]

# Mapping of notes to durations
note_durations = [
    12, # c
    1,
    8,
    4,
    10, # e
    7, 
    2,
    11, # g
    5,
    9,
    3,
    6,
]

def get_duration_lilypond(durr, note):
    """
    Convert a numeric duration (1-12) into a LilyPond-compatible duration string.
    """
    if durr == 1:
        return note + "8"
    elif durr == 2:
        return note + "4"
    elif durr == 3:
        return note + "4."
    elif durr == 4:
        return note + "2"
    elif durr == 5:
        return note + "2 ~" + note + "8"
    elif durr == 6:
        return note + "2."
    elif durr == 7:
        return note + "2 ~" + note + "4."
    elif durr == 8:
        return note + "1"
    elif durr == 9:
        return note + "1 ~" + note + "8"
    elif durr == 10:
        return note + "1 ~" + note + "4"
    elif durr == 11:
        return note + "1 ~" + note + "4."
    elif durr == 12:
        return note + "1 ~" + note + "2"
    else:
        return note + "4"  # Default to quarter note

# Function to convert notes to LilyPond strings
totaldur = 0
def numbers_to_lilypond(numbers):
    """
    Converts an array of numbers (1 through 12) to LilyPond code with dynamic durations.
    """
    global totaldur  # Declare that we're using the global variable
    lilypond_notes = []
    for num in numbers:
        # Determine the octave
        octave = num // 12
        note_index = num % 12  # Index within one octave
        note = toLily[note_index]

        # Determine the LilyPond octave markers
        if octave > 0:
            note += "'" * octave
        elif octave < 0:
            note += "," * abs(octave)
        
        # Get the duration for the note
        duration = note_durations[note_index]
        totaldur = totaldur + duration
        lily_duration = get_duration_lilypond(duration, note)
        lilypond_notes.append(lily_duration)  # Append duration to the note
    return " ".join(lilypond_notes)

# Input array of numbers
input_numbers = [1, 5, 8, 12, 3, 7, 10, 2, 11, 4, 9, 6]
random.shuffle(input_numbers)

# Transpose by an octave
transposed_numbers = [x + 12 for x in input_numbers]

# Convert the array to LilyPond notes
lilypond_code = numbers_to_lilypond(transposed_numbers)

# Template for LilyPond file
template = """
\\version "2.24.2" % LilyPond version
\\header {tagline=""}

\\score{
\\absolute {
\\time 1/8
\\override Score.BarLine.stencil = ##f
\\override Staff.TimeSignature.stencil = ##f
\\tempo 4=100
<<{
    %notesHere
    \\revert Score.BarLine.stencil
    \\bar "||"

    }\\\\{
    c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8
    c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8
    c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8
    c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8
    c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8
    c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8
    c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8 c8

    }>>
}

\\layout { }
\\midi { }
}

"""

# Replace placeholder with generated notes
output_content = template.replace("%notesHere", lilypond_code)
output_content = output_content.replace("%time", str(totaldur))

# Output LilyPond file
output_file = "output.ly"
with open(output_file, "w") as file:
    file.write(output_content)

print(f"LilyPond file generated: {output_file}")

# Optionally, render the score with LilyPond
os.system(f"lily {output_file}")
