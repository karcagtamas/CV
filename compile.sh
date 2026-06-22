#!/bin/bash

set -e

TEX_FILE="cv.tex"
PDF_FILE="cv.pdf"

echo "Starting LaTex compilation..."

pdflatex -interaction=nonstopmode "$TEX_FILE"
pdflatex -interaction=nonstopmode "$TEX_FILE"

echo "PDF created successfully!"

echo "Cleaning up temporary files..."
rm -f *.aux *.log *.out *.toc

echo "Done!"