#!/bin/bash

# Convert a .vcf file to a plink binary fileset (.bed, .bim, .fam)

module load plink/1.90
#ml plink2/2.3

vcfdir=/sc/arion/projects/EPIASD/splicingQTL/output/vcf
vcffile=Capstone4.sel.hasPhenosOnly.idsync.vcf
vcfoutdir=/sc/arion/projects/EPIASD/splicingQTL/output/vcf/plink1.9

mkdir -p $vcfoutdir

plink --vcf $vcfdir/$vcffile --double-id --make-bed --out $vcfoutdir/$vcffile
