# !/bin/bash
# The support is currently limited to 23andme.
cd $HOME/AdmixTools-For-Everyone/files/
plink --23file raw.txt --make-bed --out output
plink --bfile output --geno 0.05 --make-bed --out output_qc1
plink --bfile output_qc1 --mind 0.05 --make-bed --out output_qc2
convertf -p convertf_param.par


