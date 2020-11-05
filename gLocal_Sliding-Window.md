# DownLoad HG-19 (shorter) Large sequence, from UCSC
wget -c http://hgdownload.cse.ucsc.edu/goldenPath/hg19/bigZips/hg19.fa.gz

# DownLoad GRCh38 (Longer) Large Genome, from NCBI
wget -c ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/vertebrate_mammalian/Homo_sapiens/reference/GCF_000001405.39_GRCh38.p13/GCF_000001405.39_GRCh38.p13_genomic.fna.gz

# De-Compress above 2 Genomes, rename the Second
gunzip -c hg19.fa.gz
gunzip -c GCF_000001405.39_GRCh38.p13_genomic.fna.gz
mv GCF_000001405.39_GRCh38.p13_genomic.fna grch38.fa

# Convert both into Single-line FASTA formats,
grep -v ">" hg19.fa | sed -e 's/\n//g' -e 's/ //g' | tee hg19seq.fa
$ cat> hg19hdr.fa
>hg19
^C
cat hg19hdr.fa hg19seq.fa >> hg19new.fa
awk '{if(NR==1) {print $0} else {if($0 ~ /^>/) {print "\n"$0} else {printf $0}}}' hg19new.fa | tee hg19sng.fa
