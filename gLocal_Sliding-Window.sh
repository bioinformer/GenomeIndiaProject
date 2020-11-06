# AIM of Task Assigned: To obtain gLocal (semi-Global), partitioned Pairwise Local DP/ Dynamic-Programming based Smith-WATERman Local Alignments of about ~22 million such EMBOSS .water files , two of which (Left-most Aligned $ head) and (Right-most Aligned $ tail) are illustrated below, for very-lengthy pair of real Human Genomes.

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

# Compute the 'PRECISE' Sliding Window scaling, based on Differential Genome-Lengths,
# 3,272,089,205 / 3,137,161,264 = 1.0430095649
# Approximately, "1043" bases of Larger (GRCh38) human genome for every "1001" bases of Smaller (HG-19) human genome.
# Beautifully, [1043 = 149 * 7] and [1001 = 143 * 7] ; so canceling common-scaling-factor of 7,
# "149" bases of Larger (GRCh38) need to be parsed from 5` to 3` for every "143" bases of Smaller (HG-19).

# Total NET Estimate of DPs to be performed = [3,272,089,205 / 149] == 21,960,330 (OR) [3,137,161,264 / 143] == 21,938,190

[praharshit@gtx ~]$ ./EMBOSS-6.6.0/emboss/seqret -sequence hg19.fa -sbegin 1 -send 143 -outseq smaller_1.fasta
Read and write (return) sequences
[praharshit@gtx ~]$ ./EMBOSS-6.6.0/emboss/seqret -sequence grch38.fa -sbegin 1 -send 149 -outseq bigger_1.fasta
Read and write (return) sequences
[praharshit@gtx ~]$ ./seqkit stats hg19.fa grch38.fa 
file       format  type  num_seqs        sum_len  min_len       avg_len      max_len
hg19.fa    FASTA   DNA         93  3,137,161,264    4,262  33,732,916.8  249,250,621
grch38.fa  FASTA   DNA        639  3,272,089,205      970   5,120,640.4  248,956,422
[praharshit@gtx ~]$ tail -n4 smaller_1.fasta | tee smaller1.fasta 
>chr18_gl000207_random
CATACATTTAATATACCCTCACCATACAGAATGTTCTTTCCCTATTACATAAGGAGTATA
TGTATTAAGCACTAAATCTTTGGAATAATAAAAGACTATATTCATATTTGGTAACTTATT
TAATCAGAACAGGTTTACAACAT
[praharshit@gtx ~]$ tail -n4 bigger_1.fasta | tee bigger1.fasta 
>NC_012920.1 Homo sapiens mitochondrion, complete genome
GATCACAGGTCTATCACCCTATTAACCACTCACGGGAGCTCTCCATGCATTTGGTATTTT
CGTCTGGGGGGTATGCACGCGATAGCATTGCGAGACGCTGGAGCCGGAGCACCCTATGTC
GCAGTATCTGTCTTTGATTCCTGCCTCAT
[praharshit@gtx ~]$ ./EMBOSS-6.6.0/emboss/water -asequence bigger1.fasta -bsequence smaller1.fasta -gapopen 10.0 -gapextend 0.5 -outfile dp_window_1.water
Smith-Waterman local alignment of sequences
[praharshit@gtx ~]$ cat dp_window_1.water 
########################################
# Program: water
# Rundate: Fri  6 Nov 2020 11:57:18
# Commandline: water
#    -asequence bigger1.fasta
#    -bsequence smaller1.fasta
#    -gapopen 10.0
#    -gapextend 0.5
#    -outfile dp_window_1.water
# Align_format: srspair
# Report_file: dp_window_1.water
########################################

#=======================================
#
# Aligned_sequences: 2
# 1: NC_012920.1
# 2: chr18_gl000207_random
# Matrix: EDNAFULL
# Gap_penalty: 10.0
# Extend_penalty: 0.5
#
# Length: 152
# Identity:      63/152 (41.4%)
# Similarity:    63/152 (41.4%)
# Gaps:          69/152 (45.4%)
# Score: 86.5
# 
#
#=======================================

NC_012920.1       20 TATTA-ACCACTCACGGGAGCTCTCCATGCATTTGGTATTTTCGT---CT     65
                     ||.|| |||           |||.||||.||    |.||.|||.|   ||
chr18_gl00020      9 TAATATACC-----------CTCACCATACA----GAATGTTCTTTCCCT     43

NC_012920.1       66 ---------GGGGGGTATGCA-----CGCGATAGCATTGCG---------     92
                              ||.|..||||.|     |.|.|.|.|.||| |         
chr18_gl00020     44 ATTACATAAGGAGTATATGTATTAAGCACTAAATCTTTG-GAATAATAAA     92

NC_012920.1       93 AGACGCTGGAGCCGGAGCACCCTATGTCGCAGTATCTG------TCTTTG    136
                     |||                  ||||.| .|| |||.||      |.|||.
chr18_gl00020     93 AGA------------------CTATAT-TCA-TATTTGGTAACTTATTTA    122

NC_012920.1      137 AT    138
                     ||
chr18_gl00020    123 AT    124


#---------------------------------------
#---------------------------------------
[praharshit@gtx ~]$ head -n4 smaller_1.fasta | tee smaller0.fasta
>chr1
NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
NNNNNNNNNNNNNNNNNNNNNNN
[praharshit@gtx ~]$ head -n4 bigger_1.fasta | tee bigger0.fasta
>NC_000001.11 Homo sapiens chromosome 1, GRCh38.p13 Primary Assembly
NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
NNNNNNNNNNNNNNNNNNNNNNNNNNNNN
[praharshit@gtx ~]$ ./EMBOSS-6.6.0/emboss/water -asequence bigger0.fasta -bsequence smaller0.fasta -gapopen 10.0 -gapextend 0.5 -outfile dp_window_2.water
Smith-Waterman local alignment of sequences
[praharshit@gtx ~]$ cat dp_window_2.water 
########################################
# Program: water
# Rundate: Fri  6 Nov 2020 12:05:57
# Commandline: water
#    -asequence bigger0.fasta
#    -bsequence smaller0.fasta
#    -gapopen 10.0
#    -gapextend 0.5
#    -outfile dp_window_2.water
# Align_format: srspair
# Report_file: dp_window_2.water
########################################

#=======================================
#
# Aligned_sequences: 2
# 1: NC_000001.11
# 2: chr1
# Matrix: EDNAFULL
# Gap_penalty: 10.0
# Extend_penalty: 0.5
#
# Length: 1
# Identity:       1/1 (100.0%)
# Similarity:     0/1 ( 0.0%)
# Gaps:           0/1 ( 0.0%)
# Score: -1.0
# 
#
#=======================================

NC_000001.11       1 N      1
                      
chr1               1 N      1


#---------------------------------------
#---------------------------------------

