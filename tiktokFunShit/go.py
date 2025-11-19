import os
import random

# Paths to the main template and sub-templates
main_template_path = "start.ly"
sub_template_paths = [
    "1_melody.ly",
    "2_bass.ly",
    "3_foil.ly",
    "4_strum.ly",
    "5_voice.ly",
    "6_voice.ly",
    "7_paper.ly",
]

special_templates = ["rm1.ly", "rm2.ly"]

# Output file path
output_file_path = "output_combined.ly"

def is_valid_order(sub_templates):
    """
    Check if the order of sub-templates meets the specified conditions.
    Conditions:
    1. The two voice templates can't be next to each other.
    2. The foil and paper templates can't be next to each other.
    3. The melody and bass templates can't be next to each other.
    4. The list must start with foil, paper, or strum.
    5. Neither of the first two templates can be voice templates.
    """

    if "voice" in sub_templates[0] or "voice" in sub_templates[1]:
        return False

    for i in range(len(sub_templates) - 1):
        if (
            ("voice" in sub_templates[i] and "voice" in sub_templates[i + 1]) or

            ("foil" in sub_templates[i] and "paper" in sub_templates[i + 1]) or
            ("paper" in sub_templates[i] and "foil" in sub_templates[i + 1]) or

            ("melody" in sub_templates[i] and "strum" in sub_templates[i + 1]) or
            ("strum" in sub_templates[i] and "melody" in sub_templates[i + 1]) or
            
            ("melody" in sub_templates[i] and "bass" in sub_templates[i + 1]) or
            ("bass" in sub_templates[i] and "melody" in sub_templates[i + 1])
        ):
            return False

    # Check if the first template is foil, paper, or strum
    if not any(sub_templates[0].startswith(prefix) for prefix in ["3_foil", "7_paper", "1_melody"]):
        return False

    return True

def combine_templates(main_template, sub_templates, special_templates, output_file):
    try:
        # Read the main template
        with open("ly/" + main_template, "r") as main_file:
            main_content = main_file.read()

        # Read sub-template contents
        sub_contents = []
        for sub_path in sub_templates:
            with open("ly/" + sub_path, "r") as sub_file:
                sub_contents.append((sub_path, sub_file.read()))

        # Read special templates
        special_contents = []
        for special_path in special_templates:
            with open("ly/" + special_path, "r") as special_file:
                special_contents.append((special_path, special_file.read()))

        # Shuffle and validate the sub-template order
        while True:
            random.shuffle(sub_contents)
            shuffled_order = [path for path, content in sub_contents]
            if is_valid_order(shuffled_order):
                break

        # Insert the special templates
        ordered_templates = sub_contents[:4] + [special_contents[0]] + sub_contents[4:] + [special_contents[1]]

        # Write the combined content to the output file
        with open(output_file, "w") as output_file:
            # Write main template content
            output_file.write(main_content + "\n\n")

            # Write the ordered templates
            for path, content in ordered_templates:
                output_file.write(content + "\n\n")

        print(f"Templates successfully combined into '{output_file}'")
        print(f"Final order: {[path for path, _ in ordered_templates]}")

    except FileNotFoundError as e:
        print(f"Error: {e}")
    except Exception as e:
        print(f"An unexpected error occurred: {e}")

# Execute the script
combine_templates(main_template_path, sub_template_paths, special_templates, output_file_path)

os.system("lily " + output_file_path)
