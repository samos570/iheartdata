#!/bin/bash

# Create the worksheet.tex file
cd Python
python randomCVC.py

# Compile all .tex files to pdf
cd ../Worksheet
pdflatex worksheet.tex
cd ../Coversheet
pdflatex coversheet.tex
cd ../AccuracyTracker
pdflatex AccuracyTracker.tex
cd ../AccuracyGrapher
pdflatex AccuracyGrapher.tex
cd ../

# Merge pdfs
pdftk ./Coversheet/coversheet.pdf ./AccuracyTracker/AccuracyTracker.pdf ./AccuracyGrapher/AccuracyGrapher.pdf ./Worksheet/worksheet.pdf cat output CVCwords.pdf


