#!/bin/bash

# 1. MAGMA binary (Linux static build)
./get_magma.sh

mkdir -p data
cd data

LD_ref=g1000_eur.zip
GENE_loc=NCBI37.3.zip
LOCUS_zoom=summary_stats.gz

# 2. LD reference panel — 1000 Genomes EUR (matches UKB EUR ancestry)
wget -O $LD_ref "https://vu.data.surf.nl/public.php/dav/files/VZNByNwpD8qqINe"
unzip -n $LD_ref
rm $LD_ref

# 3. Gene location file for GRCh37 (NCBI37)
wget -O $GENE_loc "https://vu.data.surf.nl/public.php/dav/files/Pj2orwuF2JYyKxq/?accept=zip"
unzip -n $GENE_loc
rm $GENE_loc

# 4. Your summary statistics from LocusZoom
wget -O $LOCUS_zoom \
  "https://my.locuszoom.org/gwas/968885/data/?token=b74ac20f6ad94a88a5ea27b6ac214645"
gunzip $LOCUS_zoom

# 5. Get the IEI gene table (excel file)
wget -O IEI.xlsx "https://wp-iuis.s3.eu-west-1.amazonaws.com/app/uploads/2024/10/30094653/IUIS-IEI-list-for-web-site-July-2024V2.xlsx"

cd ..
