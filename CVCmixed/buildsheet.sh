#!/bin/bash

# Create the worksheet.tex file
cd Python
python randomCVCm.py

# Compile all .tex files to pdf
cd ../Worksheet
pdflatex worksheet.tex
cd ../Coversheet
pdflatex coversheet.tex
cd ../../AccuracyTracking
pdflatex AccuracyTracking.tex
cd ../AccuracyPlotting
pdflatex AccuracyPlotting.tex
cd ../CVCmixed

# Merge pdfs
pdftk ./Coversheet/coversheet.pdf ../AccuracyTracking/AccuracyTracking.pdf ../AccuracyPlotting/AccuracyPlotting.pdf ./Worksheet/worksheet.pdf cat output CVCmixed.pdf

