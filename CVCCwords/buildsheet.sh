#!/bin/bash

# Create the worksheet.tex file
cd Python
python randomCVCC.py

# Compile all .tex files to pdf
cd ../Worksheet
pdflatex worksheet.tex
cd ../Coversheet
pdflatex coversheet.tex
pdflatex coversheet.tex
cd ../../AccuracyTracking
pdflatex AccuracyTracking.tex
cd ../AccuracyPlotting
pdflatex AccuracyPlotting.tex
cd ../Instructions
pdflatex instructions.tex
cd ../CVCCwords

# Merge pdfs
pdftk ./Coversheet/coversheet.pdf ../Instructions/instructions.pdf ../AccuracyTracking/AccuracyTracking.pdf ../AccuracyPlotting/AccuracyPlotting.pdf ./Worksheet/worksheet.pdf cat output CVCCwords.pdf


