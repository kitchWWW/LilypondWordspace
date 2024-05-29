#!/bin/bash

# Check if LilyPond is installed
if ! command -v lilypond &> /dev/null; then
    echo "LilyPond is not installed. Please install LilyPond and try again."
    exit 1
fi

# Check if filename is provided as argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Assign filename provided as argument
filename="$1"

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "File '$filename' not found."
    exit 1
fi

# Run LilyPond to generate PDF
lilypond "$filename"

# Extract PDF filename
pdf_filename="${filename%.*}.pdf"

# Check if PDF was generated successfully
if [ ! -f "$pdf_filename" ]; then
    echo "PDF generation failed."
    exit 1
fi

# Open PDF using default PDF viewer
open "$pdf_filename" &> /dev/null

echo "PDF file '$pdf_filename' opened."
