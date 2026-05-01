#!/bin/bash

# NOTE: we get paramter N from the following quote:
# Finally, we aimed to replicate the UKB-based EBVread+ GWAS results in 184,948 individuals of EUR ancestry from the AoU no outlier cohort.

magma \
  --bfile data/g1000_eur \
  --gene-annot data/annotation.genes.annot \
  --pval data/gwas.txt N=184948 \
  --out data/ebv_gwas