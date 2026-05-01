#!/bin/bash

# make this script and the sub-scripts alias to magma
magma() {
    ./magma/magma "$@"
}
export -f magma

# Run SNP to Gene Annotation with MAGMA
./run_annot.sh

# Run Gene-level Analysis with MAGMA
./run_analysis.sh

# Run the Gene Set Enrichment with MAGMA
./run_gsea.sh