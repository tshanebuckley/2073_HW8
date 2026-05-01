#!/bin/bash

magma \
  --gene-results data/ebv_gwas.genes.raw \
  --set-annot data/IEI_geneset.txt \
  --out data/ebv_gwas_IEI