#!/bin/bash

set -e

VARIANTS=("en" "hu")


echo "Starting LaTex compilation..."

for VAR in "${VARIANTS[@]}"; do
    TEX_FILE="cv_${VAR}.tex"
    PDF_FILE="cv_${VAR}.pdf"

    if [ -f "$TEX_FILE" ]; then
        echo "----------------------------------------------------"
        echo "Processing Variant: [${VAR^^}] ($TEX_FILE)"
        echo "----------------------------------------------------"

        pdflatex -interaction=nonstopmode "$TEX_FILE"
        pdflatex -interaction=nonstopmode "$TEX_FILE"

        echo "Successfully outputted -> $PDF_FILE"
    else
        echo "Skipping variant [$VAR]: Source file $TEX_FILE not found."
    fi
done

echo "Cleaning up temporary files..."
rm -f *.aux *.log *.out *.toc

echo "Done!"