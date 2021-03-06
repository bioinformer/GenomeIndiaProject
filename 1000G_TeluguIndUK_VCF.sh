(bioinfo) [praharshit@hp Downloads]$ ls *.fastq.gz
SRR794294_1.fastq.gz  SRR794294_2.fastq.gz
(bioinfo) [praharshit@hp Downloads]$ md5sum SRR794294_1.fastq.gz 
674800451b3f049ec563f8707d9cf74d  SRR794294_1.fastq.gz
(bioinfo) [praharshit@hp Downloads]$ md5sum SRR794294_2.fastq.gz 
d07dca4508472c885c62822e38e24058  SRR794294_2.fastq.gz
(bioinfo) [praharshit@hp Downloads]$ md5sum SRR794294_1.fastq.gz > pe1.md5
(bioinfo) [praharshit@hp Downloads]$ md5sum SRR794294_2.fastq.gz > pe2.md5
(bioinfo) [praharshit@hp Downloads]$ md5sum -c pe1.md5 
SRR794294_1.fastq.gz: OK
(bioinfo) [praharshit@hp Downloads]$ md5sum -c pe2.md5 
SRR794294_2.fastq.gz: OK
(bioinfo) [praharshit@hp Downloads]$ mv SRR794294_* ~/grch38/
(bioinfo) [praharshit@hp Downloads]$ ls *.fastq.gz
ls: cannot access *.fastq.gz: No such file or directory

(base) [praharshit@hp ~]$ source activate bioinfo
(bioinfo) [praharshit@hp ~]$ cd grch38/
(bioinfo) [praharshit@hp grch38]$ seqkit stats grch38.fa SRR794294_*
file                  format  type   num_seqs        sum_len  min_len      avg_len      max_len
grch38.fa             FASTA   DNA         639  3,272,089,205      970  5,120,640.4  248,956,422
SRR794294_1.fastq.gz  FASTQ   DNA   3,082,694    311,352,094      101          101          101
SRR794294_2.fastq.gz  FASTQ   DNA   3,082,694    311,352,094      101          101          101
(bioinfo) [praharshit@hp grch38]$ bwa index grch38.fa 
[bwa_index] Pack FASTA... 25.42 sec
[bwa_index] Construct BWT for the packed sequence...
[BWTIncCreate] textLength=6544178410, availableWord=472472396
[BWTIncConstructFromPacked] 10 iterations done. 99999994 characters processed.
[BWTIncConstructFromPacked] 20 iterations done. 199999994 characters processed.
[BWTIncConstructFromPacked] 30 iterations done. 299999994 characters processed.
[BWTIncConstructFromPacked] 40 iterations done. 399999994 characters processed.
[BWTIncConstructFromPacked] 50 iterations done. 499999994 characters processed.
[BWTIncConstructFromPacked] 60 iterations done. 599999994 characters processed.
[BWTIncConstructFromPacked] 70 iterations done. 699999994 characters processed.
[BWTIncConstructFromPacked] 80 iterations done. 799999994 characters processed.
[BWTIncConstructFromPacked] 90 iterations done. 899999994 characters processed.
[BWTIncConstructFromPacked] 100 iterations done. 999999994 characters processed.
[BWTIncConstructFromPacked] 110 iterations done. 1099999994 characters processed.
[BWTIncConstructFromPacked] 120 iterations done. 1199999994 characters processed.
[BWTIncConstructFromPacked] 130 iterations done. 1299999994 characters processed.
[BWTIncConstructFromPacked] 140 iterations done. 1399999994 characters processed.
[BWTIncConstructFromPacked] 150 iterations done. 1499999994 characters processed.
[BWTIncConstructFromPacked] 160 iterations done. 1599999994 characters processed.
[BWTIncConstructFromPacked] 170 iterations done. 1699999994 characters processed.
[BWTIncConstructFromPacked] 180 iterations done. 1799999994 characters processed.
[BWTIncConstructFromPacked] 190 iterations done. 1899999994 characters processed.
[BWTIncConstructFromPacked] 200 iterations done. 1999999994 characters processed.
[BWTIncConstructFromPacked] 210 iterations done. 2099999994 characters processed.
[BWTIncConstructFromPacked] 220 iterations done. 2199999994 characters processed.
[BWTIncConstructFromPacked] 230 iterations done. 2299999994 characters processed.
[BWTIncConstructFromPacked] 240 iterations done. 2399999994 characters processed.
[BWTIncConstructFromPacked] 250 iterations done. 2499999994 characters processed.
[BWTIncConstructFromPacked] 260 iterations done. 2599999994 characters processed.
[BWTIncConstructFromPacked] 270 iterations done. 2699999994 characters processed.
[BWTIncConstructFromPacked] 280 iterations done. 2799999994 characters processed.
[BWTIncConstructFromPacked] 290 iterations done. 2899999994 characters processed.
[BWTIncConstructFromPacked] 300 iterations done. 2999999994 characters processed.
[BWTIncConstructFromPacked] 310 iterations done. 3099999994 characters processed.
[BWTIncConstructFromPacked] 320 iterations done. 3199999994 characters processed.
[BWTIncConstructFromPacked] 330 iterations done. 3299999994 characters processed.
[BWTIncConstructFromPacked] 340 iterations done. 3399999994 characters processed.
[BWTIncConstructFromPacked] 350 iterations done. 3499999994 characters processed.
[BWTIncConstructFromPacked] 360 iterations done. 3599999994 characters processed.
[BWTIncConstructFromPacked] 370 iterations done. 3699999994 characters processed.
[BWTIncConstructFromPacked] 380 iterations done. 3799999994 characters processed.
[BWTIncConstructFromPacked] 390 iterations done. 3899999994 characters processed.
[BWTIncConstructFromPacked] 400 iterations done. 3999999994 characters processed.
[BWTIncConstructFromPacked] 410 iterations done. 4099999994 characters processed.
[BWTIncConstructFromPacked] 420 iterations done. 4199999994 characters processed.
[BWTIncConstructFromPacked] 430 iterations done. 4299999994 characters processed.
[BWTIncConstructFromPacked] 440 iterations done. 4399999994 characters processed.
[BWTIncConstructFromPacked] 450 iterations done. 4499999994 characters processed.
[BWTIncConstructFromPacked] 460 iterations done. 4599999994 characters processed.
[BWTIncConstructFromPacked] 470 iterations done. 4699999994 characters processed.
[BWTIncConstructFromPacked] 480 iterations done. 4799999994 characters processed.
[BWTIncConstructFromPacked] 490 iterations done. 4899999994 characters processed.
[BWTIncConstructFromPacked] 500 iterations done. 4999999994 characters processed.
[BWTIncConstructFromPacked] 510 iterations done. 5099999994 characters processed.
[BWTIncConstructFromPacked] 520 iterations done. 5199999994 characters processed.
[BWTIncConstructFromPacked] 530 iterations done. 5299999994 characters processed.
[BWTIncConstructFromPacked] 540 iterations done. 5399999994 characters processed.
[BWTIncConstructFromPacked] 550 iterations done. 5499999994 characters processed.
[BWTIncConstructFromPacked] 560 iterations done. 5599999994 characters processed.
[BWTIncConstructFromPacked] 570 iterations done. 5699999994 characters processed.
[BWTIncConstructFromPacked] 580 iterations done. 5799999994 characters processed.
[BWTIncConstructFromPacked] 590 iterations done. 5899446058 characters processed.
[BWTIncConstructFromPacked] 600 iterations done. 5990405066 characters processed.
[BWTIncConstructFromPacked] 610 iterations done. 6071245626 characters processed.
[BWTIncConstructFromPacked] 620 iterations done. 6143092922 characters processed.
[BWTIncConstructFromPacked] 630 iterations done. 6206946986 characters processed.
[BWTIncConstructFromPacked] 640 iterations done. 6263696618 characters processed.
[BWTIncConstructFromPacked] 650 iterations done. 6314131818 characters processed.
[BWTIncConstructFromPacked] 660 iterations done. 6358954714 characters processed.
[BWTIncConstructFromPacked] 670 iterations done. 6398789402 characters processed.
[BWTIncConstructFromPacked] 680 iterations done. 6434190538 characters processed.
[BWTIncConstructFromPacked] 690 iterations done. 6465651162 characters processed.
[BWTIncConstructFromPacked] 700 iterations done. 6493609402 characters processed.
[BWTIncConstructFromPacked] 710 iterations done. 6518454730 characters processed.
[BWTIncConstructFromPacked] 720 iterations done. 6540533258 characters processed.
[bwt_gen] Finished constructing BWT in 722 iterations.
[bwa_index] 3336.36 seconds elapse.
[bwa_index] Update BWT... 20.95 sec
[bwa_index] Pack forward-only FASTA... 17.22 sec
[bwa_index] Construct SA from BWT and Occ... 1362.25 sec
[main] Version: 0.7.17-r1188
[main] CMD: bwa index grch38.fa
[main] Real time: 4843.190 sec; CPU: 4762.214 sec

(base) [praharshit@hp ~]$ source activate bioinfo
(bioinfo) [praharshit@hp ~]$ cd grch38
(bioinfo) [praharshit@hp grch38]$ ls grch38.*
grch38.fa  grch38.fa.amb  grch38.fa.ann  grch38.fa.bwt  grch38.fa.pac  grch38.fa.sa
(bioinfo) [praharshit@hp grch38]$ bwa mem grch38.fa SRR794294_1.fastq.gz SRR794294_2.fastq.gz > gr1ch38.sam
[M::bwa_idx_load_from_disk] read 0 ALT contigs
[M::process] read 99010 sequences (10000010 bp)...
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (2, 39472, 0, 1)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (242, 415, 437)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 827)
[M::mem_pestat] mean and std.dev: (342.89, 118.68)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1022)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 42.548 CPU sec, 42.536 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (5, 43791, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (243, 417, 440)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 834)
[M::mem_pestat] mean and std.dev: (343.90, 119.42)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1031)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 45.669 CPU sec, 45.496 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (2, 24569, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (243, 416, 439)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 831)
[M::mem_pestat] mean and std.dev: (343.09, 119.13)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1027)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 187.061 CPU sec, 187.004 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (2, 42790, 1, 1)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (242, 416, 440)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 836)
[M::mem_pestat] mean and std.dev: (343.08, 119.57)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1034)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 42.980 CPU sec, 42.827 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (1, 41163, 0, 1)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (245, 417, 440)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 830)
[M::mem_pestat] mean and std.dev: (345.05, 118.23)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1025)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 41.293 CPU sec, 41.111 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (2, 44192, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (242, 417, 440)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 836)
[M::mem_pestat] mean and std.dev: (343.53, 119.32)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1034)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 40.541 CPU sec, 40.395 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (0, 33427, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (241, 416, 439)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 835)
[M::mem_pestat] mean and std.dev: (343.12, 119.01)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1033)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 92.035 CPU sec, 91.880 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (5, 40617, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (242, 417, 440)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 836)
[M::mem_pestat] mean and std.dev: (343.04, 119.72)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1034)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 41.002 CPU sec, 40.816 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (2, 43432, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (241, 418, 440)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 838)
[M::mem_pestat] mean and std.dev: (343.43, 119.93)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1037)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 39.395 CPU sec, 39.210 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (1, 42627, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (242, 416, 439)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 833)
[M::mem_pestat] mean and std.dev: (343.75, 118.99)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1030)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 38.181 CPU sec, 38.013 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (0, 43031, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (240, 416, 439)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 837)
[M::mem_pestat] mean and std.dev: (343.00, 119.76)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1036)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 41.600 CPU sec, 41.423 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (2, 42748, 1, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (244, 418, 441)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 835)
[M::mem_pestat] mean and std.dev: (344.49, 119.30)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1032)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 40.946 CPU sec, 40.789 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (2, 42537, 1, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (244, 417, 440)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 832)
[M::mem_pestat] mean and std.dev: (344.26, 119.62)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1028)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 41.240 CPU sec, 41.048 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (1, 40687, 0, 1)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (242, 416, 440)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 836)
[M::mem_pestat] mean and std.dev: (343.41, 119.20)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1034)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 40.262 CPU sec, 40.091 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (4, 38967, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (241, 416, 441)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 841)
[M::mem_pestat] mean and std.dev: (342.79, 119.93)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1041)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 62.815 CPU sec, 62.636 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (1, 43134, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (241, 417, 441)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 841)
[M::mem_pestat] mean and std.dev: (343.41, 119.96)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1041)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 41.648 CPU sec, 41.479 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (1, 42949, 0, 1)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (241, 417, 441)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 841)
[M::mem_pestat] mean and std.dev: (343.57, 120.22)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1041)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 40.006 CPU sec, 39.827 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (2, 40877, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (242, 417, 440)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 836)
[M::mem_pestat] mean and std.dev: (343.68, 120.26)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1034)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 37.587 CPU sec, 37.408 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (2, 39818, 0, 1)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (240, 416, 440)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 840)
[M::mem_pestat] mean and std.dev: (342.50, 119.75)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1040)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 47.046 CPU sec, 46.861 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (1, 43407, 0, 2)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (242, 418, 441)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 839)
[M::mem_pestat] mean and std.dev: (344.36, 119.86)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1038)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 39.994 CPU sec, 39.806 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (0, 42081, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (241, 417, 439)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 835)
[M::mem_pestat] mean and std.dev: (343.38, 119.44)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1033)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 42.349 CPU sec, 42.145 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (2, 39325, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (239, 416, 439)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 839)
[M::mem_pestat] mean and std.dev: (342.16, 119.53)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1039)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 41.017 CPU sec, 40.855 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (3, 37555, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (239, 416, 440)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 842)
[M::mem_pestat] mean and std.dev: (341.83, 120.80)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1043)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 68.206 CPU sec, 67.990 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (0, 43114, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (239, 417, 440)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 842)
[M::mem_pestat] mean and std.dev: (342.70, 120.15)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1043)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 37.683 CPU sec, 37.493 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (2, 42008, 0, 2)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (242, 416, 440)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 836)
[M::mem_pestat] mean and std.dev: (342.98, 119.52)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1034)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 40.025 CPU sec, 39.825 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (0, 34173, 1, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (241, 416, 439)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 835)
[M::mem_pestat] mean and std.dev: (342.37, 119.91)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1033)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 90.197 CPU sec, 90.054 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (0, 42143, 0, 1)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (239, 416, 440)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 842)
[M::mem_pestat] mean and std.dev: (342.02, 120.21)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1043)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 42.091 CPU sec, 41.861 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (3, 32703, 2, 1)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (242, 416, 440)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 836)
[M::mem_pestat] mean and std.dev: (343.40, 119.27)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1034)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 39.103 CPU sec, 38.925 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (1, 39597, 1, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (240, 416, 439)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 837)
[M::mem_pestat] mean and std.dev: (342.35, 119.50)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1036)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 82.583 CPU sec, 82.397 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (1, 43038, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (242, 417, 441)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 839)
[M::mem_pestat] mean and std.dev: (342.91, 120.24)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1038)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 41.420 CPU sec, 41.261 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (4, 42208, 0, 2)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (240, 417, 440)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 840)
[M::mem_pestat] mean and std.dev: (343.12, 119.78)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1040)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 40.023 CPU sec, 39.824 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (2, 33444, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (240, 416, 440)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 840)
[M::mem_pestat] mean and std.dev: (342.70, 119.95)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1040)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 50.987 CPU sec, 50.807 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (5, 42311, 0, 2)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (242, 416, 439)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 833)
[M::mem_pestat] mean and std.dev: (343.18, 118.97)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1030)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 39.711 CPU sec, 39.516 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (2, 28910, 0, 1)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (241, 416, 440)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 838)
[M::mem_pestat] mean and std.dev: (342.28, 119.75)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1037)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 94.991 CPU sec, 94.832 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (2, 38215, 0, 2)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (241, 416, 440)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 838)
[M::mem_pestat] mean and std.dev: (342.36, 119.90)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1037)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 44.441 CPU sec, 44.219 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (0, 41978, 2, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (242, 415, 438)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 830)
[M::mem_pestat] mean and std.dev: (342.45, 118.79)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1026)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 41.320 CPU sec, 41.133 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (4, 39575, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (242, 417, 440)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 836)
[M::mem_pestat] mean and std.dev: (343.49, 119.53)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1034)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 60.854 CPU sec, 60.664 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (4, 40594, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (244, 416, 439)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 829)
[M::mem_pestat] mean and std.dev: (344.02, 118.58)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1024)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 43.286 CPU sec, 43.081 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (0, 40553, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (241, 417, 439)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 835)
[M::mem_pestat] mean and std.dev: (343.22, 119.15)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1033)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 40.718 CPU sec, 40.518 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (2, 41684, 3, 1)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (241, 417, 440)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 838)
[M::mem_pestat] mean and std.dev: (343.00, 119.91)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1037)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 44.888 CPU sec, 44.715 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (2, 42683, 0, 1)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (242, 416, 440)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 836)
[M::mem_pestat] mean and std.dev: (342.85, 119.23)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1034)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 41.441 CPU sec, 41.233 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (1, 41448, 1, 1)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (242, 417, 440)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 836)
[M::mem_pestat] mean and std.dev: (343.58, 119.48)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1034)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 38.704 CPU sec, 38.523 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (2, 43858, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (244, 418, 441)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 835)
[M::mem_pestat] mean and std.dev: (344.67, 119.34)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1032)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 36.517 CPU sec, 36.311 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (0, 39378, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (241, 417, 440)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 838)
[M::mem_pestat] mean and std.dev: (343.18, 120.05)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1037)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 44.611 CPU sec, 44.442 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (1, 35869, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (244, 417, 439)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 829)
[M::mem_pestat] mean and std.dev: (344.43, 118.69)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1024)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 41.291 CPU sec, 41.074 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (0, 37255, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (242, 416, 439)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 833)
[M::mem_pestat] mean and std.dev: (342.80, 119.40)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1030)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 40.871 CPU sec, 40.695 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (1, 37335, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (242, 415, 438)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 830)
[M::mem_pestat] mean and std.dev: (342.68, 118.75)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1026)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 43.408 CPU sec, 43.206 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (2, 28318, 1, 1)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (240, 416, 439)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 837)
[M::mem_pestat] mean and std.dev: (342.20, 119.73)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1036)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 53.510 CPU sec, 53.344 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (1, 35710, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (242, 415, 438)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 830)
[M::mem_pestat] mean and std.dev: (342.60, 118.56)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1026)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 76.391 CPU sec, 76.248 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (1, 36073, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (238, 414, 438)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 838)
[M::mem_pestat] mean and std.dev: (340.57, 119.50)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1038)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 47.340 CPU sec, 47.157 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (1, 40684, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (241, 416, 440)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 838)
[M::mem_pestat] mean and std.dev: (342.38, 119.82)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1037)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 48.014 CPU sec, 47.803 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (2, 38441, 2, 1)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (240, 415, 438)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 834)
[M::mem_pestat] mean and std.dev: (342.39, 119.58)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1032)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 61.527 CPU sec, 61.344 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (0, 36855, 0, 2)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (243, 416, 438)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 828)
[M::mem_pestat] mean and std.dev: (342.73, 119.08)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1023)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 71.732 CPU sec, 71.527 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (2, 36563, 1, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (242, 414, 438)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 830)
[M::mem_pestat] mean and std.dev: (342.23, 118.86)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1026)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 45.329 CPU sec, 45.160 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (4, 38658, 2, 1)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (243, 417, 439)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 831)
[M::mem_pestat] mean and std.dev: (343.90, 119.16)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1027)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 40.434 CPU sec, 40.232 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (1, 40036, 1, 1)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (239, 415, 439)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 839)
[M::mem_pestat] mean and std.dev: (341.43, 119.72)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1039)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 41.320 CPU sec, 41.145 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (0, 34546, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (241, 416, 440)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 838)
[M::mem_pestat] mean and std.dev: (343.06, 119.24)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1037)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 114.602 CPU sec, 114.428 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (2, 38703, 0, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (239, 416, 440)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 842)
[M::mem_pestat] mean and std.dev: (342.41, 119.85)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1043)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 48.345 CPU sec, 48.156 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (0, 21453, 2, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (238, 417, 440)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 844)
[M::mem_pestat] mean and std.dev: (342.38, 120.48)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1046)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 99010 reads in 138.409 CPU sec, 138.213 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (1, 3114, 11, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (229, 408, 437)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 853)
[M::mem_pestat] mean and std.dev: (335.30, 127.11)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1061)
[M::mem_pestat] analyzing insert size distribution for orientation RF...
[M::mem_pestat] (25, 50, 75) percentile: (1448, 2195, 4477)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 10535)
[M::mem_pestat] mean and std.dev: (2521.18, 1767.71)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 13564)
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_pestat] skip orientation RF
[M::mem_process_seqs] Processed 99010 reads in 231.094 CPU sec, 230.944 real sec
[M::process] read 99010 sequences (10000010 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (0, 4290, 14, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (234, 408, 437)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 843)
[M::mem_pestat] mean and std.dev: (337.36, 126.05)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1046)
[M::mem_pestat] analyzing insert size distribution for orientation RF...
[M::mem_pestat] (25, 50, 75) percentile: (987, 1941, 2848)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 6570)
[M::mem_pestat] mean and std.dev: (2071.21, 1510.33)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 8431)
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_pestat] skip orientation RF
[M::mem_process_seqs] Processed 99010 reads in 230.223 CPU sec, 230.041 real sec
[M::process] read 26768 sequences (2703568 bp)...
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (1, 4244, 15, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (232, 409, 437)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 847)
[M::mem_pestat] mean and std.dev: (335.44, 126.45)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1052)
[M::mem_pestat] analyzing insert size distribution for orientation RF...
[M::mem_pestat] (25, 50, 75) percentile: (617, 1520, 4445)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 12101)
[M::mem_pestat] mean and std.dev: (2419.93, 2386.22)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 15929)
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_pestat] skip orientation RF
[M::mem_process_seqs] Processed 99010 reads in 233.790 CPU sec, 233.707 real sec
[M::mem_pestat] # candidate unique pairs for (FF, FR, RF, RR): (0, 1229, 3, 0)
[M::mem_pestat] skip orientation FF as there are not enough pairs
[M::mem_pestat] analyzing insert size distribution for orientation FR...
[M::mem_pestat] (25, 50, 75) percentile: (242, 408, 437)
[M::mem_pestat] low and high boundaries for computing mean and std.dev: (1, 827)
[M::mem_pestat] mean and std.dev: (338.08, 124.46)
[M::mem_pestat] low and high boundaries for proper pairs: (1, 1022)
[M::mem_pestat] skip orientation RF as there are not enough pairs
[M::mem_pestat] skip orientation RR as there are not enough pairs
[M::mem_process_seqs] Processed 26768 reads in 61.694 CPU sec, 61.564 real sec
[main] Version: 0.7.17-r1188
[main] CMD: bwa mem grch38.fa SRR794294_1.fastq.gz SRR794294_2.fastq.gz
[main] Real time: 3895.341 sec; CPU: 3904.638 sec

(bioinfo) [praharshit@hp grch38]$ ls gr1ch38.sam 
gr1ch38.sam
(bioinfo) [praharshit@hp grch38]$ head -n650 gr1ch38.sam | tail -n12
@SQ	SN:NC_012920.1	LN:16569
@PG	ID:bwa	PN:bwa	VN:0.7.17-r1188	CL:bwa mem grch38.fa SRR794294_1.fastq.gz SRR794294_2.fastq.gz
SRR794294.1	99	NC_000001.11	10005	0	101M	=	10020	116	CCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCGAACCCTAACCCTAACCCTACCCCTAC	<?;DB?:;AADFF?FFFF3:C+CAGGCGFECCFE3D8;??GFFBFDFFEF>;C6@(6C3@=??A)6(6(66>@5''',,8<3<@??B398??(+(2?2<?#	NM:i:3	MD:Z:74T19A5A0	MC:Z:101M	AS:i:90	XS:i:95
SRR794294.1	147	NC_000001.11	10020	0	101M	=	10005	-116	CACCCTACCCCAAACCCTACCCCTAACCCAAGCCCTAACCCCACCCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCAACCCTAACCCT	#################################@?53,;83'=8?36(6.(9@@8)C;>D?0(B9)?*B:)FC?8@)?;:+;3A:2EBFFA?FDDDAB8=+	NM:i:8	MD:Z:0A6A3T7A9T1A9T1A57	MC:Z:101M	AS:i:65XS:i:59
SRR794294.2	99	NC_000001.11	10007	25	101M	=	10098	164	TAACCCTAACCCTAGCCCTAGCCCTAGCCCTAGCCCTAGCCCTAGCCCTAACCCTAACCCTAACCCTAGCCCTAGCCCTAGCCCTAGCCCTAACCCTAACC	@@@ADBDDHFDHHI@GGGGEAAFH>C?FDHIF9BEHGC?DGBAAHEIDHGIGHFH=FHIIGGCHFAACC@C>CCC;CCAC?3=C9?9@?A(9<A2?8+(2?	NM:i:10	MD:Z:14A5A5A5A5A5A23A5A5A5A14	MC:Z:27S8M1I65MAS:i:51	XS:i:51
SRR794294.2	147	NC_000001.11	10098	25	27S8M1I65M	=	10007	-164	CAACCCTTACCCCTACCCCCTACCCCCAACCCTAACCCCAACCCTAACCCTAACCCTAACCCTAACCCTAACCCCAACCCCTAACCCTAGCCCTAACCCTA	######################################################A=A=>BA>(=7BB=58048:)41ABA7+=2=><+2+B@CA?2A==:=	NM:i:3	MD:Z:46T14A11	MC:Z:101M	AS:i:56XS:i:54
SRR794294.3	99	NC_000022.11	50807981	0	101M	=	50807905	25	GTTCGGGTTCGGGTTAGGGTTAGGGTTAGGGTTAGGGTTAGGGTTCGGGTTCGGGTTCGGGTTAGGGTTAGGGTTAGGGGTCGGGTTAGGGTTCGGGTTAG	@@@FFFFAFFHHHEF@FHI@CGGIIC@FHDF*?BBHE09BFGD=;6;E@####################################################	NM:i:7	MD:Z:3A5A41A5A21T1A11A7	MC:Z:101M	AS:i:67	XS:i:62
SRR794294.3	147	NC_000022.11	50807905	0	101M	=	50807981	-25	TAGGGTTAGGGTTTGGGTTAGGGTTAGGGTTAGGGTTAGGGTTAGGGTTAGGGTTAGGGTTAGGGTTAGGGTTAGGGTTAGGGTTAGGGTTAGGGTTAGGG	##############A?95,(995=AA?;.(6((6(@?A?=A@@=;;8=)DFB=FFDB(EDDB?8GF:)GDHHEGIEJIHHIJJIGEHHFFDHHFFFFFCBC	NM:i:1	MD:Z:13A87	MC:Z:101M	AS:i:96	XS:i:96
SRR794294.4	83	NC_000022.11	50808191	0	14S67M1I15M4S	=	50808043	-230	GGTAGGGGTTGGGGTCGGGTTAGGGTTCGGGTTCGGGTTCGGGTTCGGGTTCGGGTTCGGGTTCGGGTTAGGGTTAGGGTTAGGGTTAGGGTTAGGGTTCG	################B?8(92B><5<0@>5)&&B>5-B;DDB@?DB@A394<EE@@/GEGD?)GIGGB>GGGHFEIIHIEIIIHGGIHGHGHFFFFF@@@	NM:i:4	MD:Z:7C47C5C20	MC:Z:14M1I39M47S	AS:i:60	XS:i:68
SRR794294.4	163	NC_000022.11	50808043	0	14M1I39M47S	=	50808191	230	TAGGGTTAGGGTTAGGGGTTAGGGTTAGGGTTAGGGTTAGGGTTGGGGTTAGGGGGGGGGGGGGGGTGGTTGGGGGTTAGGGTTGGGGGGAGGGGAGGAGG	@7@DDDDDFFH;;FHIIEFB;CGEE@:DF;:B#####################################################################	NM:i:2	MD:Z:43A9	MC:Z:14S67M1I15M4S	AS:i:41	XS:i:49
SRR794294.5	99	NC_000012.12	10002	0	101M	=	10204	295	TAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCATAACCCTAACCCTAACC	==<AA;A++<<;+<CBAB333A;?A>)@33?7?:))?0:>9>A>A>B<9A7>5=A>>>A=57)6;@>@@################################	NM:i:1	MD:Z:83C17	MC:Z:8S93M	AS:i:96	XS:i:96
SRR794294.5	147	NC_000012.12	10204	0	8S93M	=	10002	-295	ACCCTCTTCCTAACCCTAGCCCTAACCCTAACCCTAACCCGACCCCTAGCCCTTACCCTAACCCTAACCCTAACCCTAACCCTACCCCTAACCCTAACCCT	####################################################################A?:11B@:)?2AAA<))BBC?7<AC7=AA?<=7	NM:i:5	MD:Z:10A21T1A5A4A47	MC:Z:101M	AS:i:68XS:i:68	XA:Z:NC_000022.11,+50807966,93M8S,5;NW_003571049.1,-204,8S93M,5;NC_000005.10,-10478,7S94M,6;NC_000001.11,-10005,8S93M,6;

(bioinfo) [praharshit@hp grch38]$ samtools flagstat gr1ch38.sam 
6179411 + 0 in total (QC-passed reads + QC-failed reads)
0 + 0 secondary
14023 + 0 supplementary
0 + 0 duplicates
6079398 + 0 mapped (98.38% : N/A)
6165388 + 0 paired in sequencing
3082694 + 0 read1
3082694 + 0 read2
5914774 + 0 properly paired (95.94% : N/A)
6017660 + 0 with itself and mate mapped
47715 + 0 singletons (0.77% : N/A)
86674 + 0 with mate mapped to a different chr
55497 + 0 with mate mapped to a different chr (mapQ>=5)
(bioinfo) [praharshit@hp grch38]$ samtools view -S -b gr1ch38.sam > gr1ch38.aln.bam
(bioinfo) [praharshit@hp grch38]$ samtools sort -o gr1ch38.aln.sort.bam gr1ch38.aln.bam 
[bam_sort_core] merging from 2 files and 1 in-memory blocks...
(bioinfo) [praharshit@hp grch38]$ samtools index gr1ch38.aln.sort.bam 
(bioinfo) [praharshit@hp grch38]$ ls gr1ch38.*
gr1ch38.aln.bam  gr1ch38.aln.sort.bam  gr1ch38.aln.sort.bam.bai  gr1ch38.sam
(bioinfo) [praharshit@hp grch38]$ samtools flagstat gr1ch38.aln.bam 
6179411 + 0 in total (QC-passed reads + QC-failed reads)
0 + 0 secondary
14023 + 0 supplementary
0 + 0 duplicates
6079398 + 0 mapped (98.38% : N/A)
6165388 + 0 paired in sequencing
3082694 + 0 read1
3082694 + 0 read2
5914774 + 0 properly paired (95.94% : N/A)
6017660 + 0 with itself and mate mapped
47715 + 0 singletons (0.77% : N/A)
86674 + 0 with mate mapped to a different chr
55497 + 0 with mate mapped to a different chr (mapQ>=5)
(bioinfo) [praharshit@hp grch38]$ samtools flagstat gr1ch38.aln.sort.bam
6179411 + 0 in total (QC-passed reads + QC-failed reads)
0 + 0 secondary
14023 + 0 supplementary
0 + 0 duplicates
6079398 + 0 mapped (98.38% : N/A)
6165388 + 0 paired in sequencing
3082694 + 0 read1
3082694 + 0 read2
5914774 + 0 properly paired (95.94% : N/A)
6017660 + 0 with itself and mate mapped
47715 + 0 singletons (0.77% : N/A)
86674 + 0 with mate mapped to a different chr
55497 + 0 with mate mapped to a different chr (mapQ>=5)

(bioinfo) [praharshit@hp grch38]$ ls grch38.*
grch38.fa  grch38.fa.amb  grch38.fa.ann  grch38.fa.bwt  grch38.fa.pac  grch38.fa.sa
(bioinfo) [praharshit@hp grch38]$ samtools faidx grch38.fa
(bioinfo) [praharshit@hp grch38]$ ls grch38.*
grch38.fa  grch38.fa.amb  grch38.fa.ann  grch38.fa.bwt  grch38.fa.fai  grch38.fa.pac  grch38.fa.sa
(bioinfo) [praharshit@hp grch38]$ samtools mpileup -f grch38.fa gr1ch38.aln.sort.bam | head
[mpileup] 1 samples in 1 input files
NC_000001.11	10002	a	1	^!.	@
NC_000001.11	10003	a	1	.	@
NC_000001.11	10004	c	1	.	<
NC_000001.11	10005	c	3	.^!.^!.	?<>
NC_000001.11	10006	c	3	...	?>>
NC_000001.11	10007	t	4	...^:.	B;C@
NC_000001.11	10008	a	4	....	;DF@
NC_000001.11	10009	a	4	....	DBF@
NC_000001.11	10010	c	4	....	A?FA
NC_000001.11	10011	c	4	....	A:FD

(bioinfo) [praharshit@hp grch38]$ ls *.bam
gr1ch38.aln.bam  gr1ch38.aln.sort.bam
(bioinfo) [praharshit@hp grch38]$ bcftools mpileup -O b -o gr1ch38_raw.bcf -f grch38.fa gr1ch38.aln.sort.bam 
[mpileup] 1 samples in 1 input files
[mpileup] maximum number of reads per input file set to -d 250
(bioinfo) [praharshit@hp grch38]$ bcftools call --ploidy 2 -m -v -o gr1ch38_variants.vcf gr1ch38_raw.bcf

PRE-DEFINED PLOIDY FILES

 * Columns are: CHROM,FROM,TO,SEX,PLOIDY
 * Coordinates are 1-based inclusive.
 * A '*' means any value not otherwise defined.

GRCh37
   .. Human Genome reference assembly GRCh37 / hg19

GRCh38
   .. Human Genome reference assembly GRCh38 / hg38

X
   .. Treat male samples as haploid and female as diploid regardless of the chromosome name

Y
   .. Treat male samples as haploid and female as no-copy, regardless of the chromosome name

1
   .. Treat all samples as haploid

Run as --ploidy <alias> (e.g. --ploidy GRCh37).
To see the detailed ploidy definition, append a question mark (e.g. --ploidy GRCh37?).

(bioinfo) [praharshit@hp grch38]$ bcftools call --ploidy GRCh38?
X 1 9999 M 1
X 2781480 155701381 M 1
Y 1 57227415 M 1
Y 1 57227415 F 0
MT 1 16569 M 1
MT 1 16569 F 1
chrX 1 9999 M 1
chrX 2781480 155701381 M 1
chrY 1 57227415 M 1
chrY 1 57227415 F 0
chrM 1 16569 M 1
chrM 1 16569 F 1
*  * *     M 2
*  * *     F 2
(bioinfo) [praharshit@hp grch38]$ bcftools call --ploidy GRCh38 -m -v -o gr1ch38_variants.vcf gr1ch38_raw.bcf
(bioinfo) [praharshit@hp grch38]$ vcfutils.pl varFilter gr1ch38_variants.vcf > bwasamtools.vcf

(bioinfo) [praharshit@hp grch38]$ grep -v '^#' bwasamtools.vcf | wc -l
33565
(bioinfo) [praharshit@hp grch38]$ grep -v '^#' bwasamtools.vcf | head -n32
NC_000001.11	186810	.	C	G	39.4149	.	DP=2;VDB=0.42;SGB=-0.453602;MQ0F=0;AC=2;AN=2;DP4=0,0,2,0;MQ=40	GT:PL	1/1:69,6,0
NC_000001.11	186835	.	A	G	40.4148	.	DP=2;VDB=0.42;SGB=-0.453602;MQ0F=0;AC=2;AN=2;DP4=0,0,2,0;MQ=40	GT:PL	1/1:70,6,0
NC_000001.11	187102	.	C	G	39.4149	.	DP=2;VDB=0.02;SGB=-0.453602;MQ0F=0;AC=2;AN=2;DP4=0,0,0,2;MQ=50	GT:PL	1/1:69,6,0
NC_000001.11	889689	.	G	C	9.00416	.	DP=2;VDB=0.06;SGB=-0.453602;MQSB=1;MQ0F=0.5;AC=2;AN=2;DP4=0,0,1,1;MQ=30	GT:PL	1/1:38,3,0
NC_000001.11	965350	.	G	A	31.4175	.	DP=2;VDB=0.5;SGB=-0.453602;MQ0F=0;AC=2;AN=2;DP4=0,0,2,0;MQ=60	GT:PL	1/1:61,6,0
NC_000001.11	965643	.	T	C	54	.	DP=3;VDB=0.839668;SGB=-0.511536;MQ0F=0;AC=2;AN=2;DP4=0,0,0,3;MQ=60	GT:PL	1/1:84,9,0
NC_000001.11	1129916	.	T	C	22.4391	.	DP=2;VDB=0.7;SGB=-0.453602;MQSB=1;MQ0F=0;AC=2;AN=2;DP4=0,0,1,1;MQ=60	GT:PL	1/1:52,6,0
NC_000001.11	1156447	.	C	T	47.4146	.	DP=3;VDB=0.88;SGB=-0.453602;MQSB=1;MQ0F=0;AC=2;AN=2;DP4=0,0,1,1;MQ=60	GT:PL	1/1:77,6,0
NC_000001.11	1364253	.	C	G	41.4148	.	DP=2;VDB=0.92;SGB=-0.453602;MQSB=1;MQ0F=0;AC=2;AN=2;DP4=0,0,1,1;MQ=60	GT:PL	1/1:71,6,0
NC_000001.11	1411525	.	T	A	34.4159	.	DP=2;VDB=0.68;SGB=-0.453602;MQ0F=0;AC=2;AN=2;DP4=0,0,2,0;MQ=60	GT:PL	1/1:64,6,0
NC_000001.11	1718971	.	T	C	48.4146	.	DP=2;VDB=0.56;SGB=-0.453602;MQSB=1;MQ0F=0;AC=2;AN=2;DP4=0,0,1,1;MQ=60	GT:PL	1/1:78,6,0
NC_000001.11	2327151	.	aaca	aACACaca	90	.	INDEL;IDV=1;IMF=0.5;DP=2;VDB=0.84;SGB=-0.453602;MQSB=1;MQ0F=0;AC=2;AN=2;DP4=0,0,1,1;MQ=60	GT:PL	1/1:120,6,0
NC_000001.11	2652211	.	A	G	25.4267	.	DP=4;VDB=0.7;SGB=-0.453602;MQ0F=0;AC=2;AN=2;DP4=0,0,2,0;MQ=29	GT:PL	1/1:55,6,0
NC_000001.11	2851138	.	C	T	43.4147	.	DP=2;VDB=0.28;SGB=-0.453602;MQ0F=0;AC=2;AN=2;DP4=0,0,0,2;MQ=60	GT:PL	1/1:73,6,0
NC_000001.11	2880701	.	T	G	27.4222	.	DP=2;VDB=0.28;SGB=-0.453602;MQSB=1;MQ0F=0;AC=2;AN=2;DP4=0,0,1,1;MQ=60	GT:PL	1/1:57,6,0
NC_000001.11	3048564	.	G	A	44.4146	.	DP=2;VDB=0.1;SGB=-0.453602;MQ0F=0;AC=2;AN=2;DP4=0,0,2,0;MQ=60	GT:PL	1/1:74,6,0
NC_000001.11	3192587	.	G	A	25.4267	.	DP=2;VDB=0.44;SGB=-0.453602;MQSB=1;MQ0F=0;AC=2;AN=2;DP4=0,0,1,1;MQ=60	GT:PL	1/1:55,6,0
NC_000001.11	3230466	.	T	C	39.4149	.	DP=2;VDB=0.52;SGB=-0.453602;MQSB=1;MQ0F=0;AC=2;AN=2;DP4=0,0,1,1;MQ=60	GT:PL	1/1:69,6,0
NC_000001.11	3251686	.	G	C	16.5123	.	DP=2;VDB=0.9;SGB=-0.453602;MQ0F=0;AC=2;AN=2;DP4=0,0,2,0;MQ=60	GT:PL	1/1:46,6,0
NC_000001.11	3502001	.	T	C	66	.	DP=4;VDB=0.635923;SGB=-0.511536;MQSB=1;MQ0F=0;AC=2;AN=2;DP4=0,0,1,2;MQ=52	GT:PL	1/1:96,9,0
NC_000001.11	3697357	.	A	G	61	.	DP=3;VDB=0.84;SGB=-0.453602;MQSB=1;MQ0F=0;AC=2;AN=2;DP4=0,0,1,1;MQ=60	GT:PL	1/1:91,6,0
NC_000001.11	3709954	.	A	G	20.9306	.	DP=3;VDB=0.42;SGB=-0.453602;RPB=1;MQB=1;MQSB=1;BQB=1;MQ0F=0;ICB=1;HOB=0.5;AC=1;AN=2;DP4=1,0,1,1;MQ=60	GT:PL	0/1:54,0,16
NC_000001.11	4144528	.	A	T	35.5717	.	DP=4;VDB=0.568985;SGB=-0.511536;RPB=1;MQB=1;MQSB=0.5;BQB=1;MQ0F=0;ICB=1;HOB=0.5;AC=1;AN=2;DP4=0,1,2,1;MQ=51	GT:PL	0/1:69,0,20
NC_000001.11	4144533	.	T	C	20.4431	.	DP=4;VDB=0.68;SGB=-0.453602;RPB=0.5;MQB=0.5;MQSB=0.5;BQB=0.75;MQ0F=0;ICB=1;HOB=0.5;AC=1;AN=2;DP4=1,1,1,1;MQ=51	GT:PL	0/1:53,0,52
NC_000001.11	4144573	.	T	C	51	.	DP=5;VDB=0.559209;SGB=-0.511536;RPB=0.666667;MQB=0.666667;MQSB=1;BQB=0.666667;MQ0F=0;ICB=1;HOB=0.5;AC=1;AN=2;DP4=1,1,2,1;MQ=43	GT:PL	0/1:84,0,13
NC_000001.11	4144589	.	T	C	38.5072	.	DP=3;VDB=0.48;SGB=-0.453602;RPB=1;MQB=1;MQSB=1;BQB=1;MQ0F=0;AC=2;AN=2;DP4=1,0,1,1;MQ=43	GT:PL	1/1:66,0,1
NC_000001.11	4183745	.	C	T	41.4148	.	DP=2;VDB=0.1;SGB=-0.453602;MQ0F=0;AC=2;AN=2;DP4=0,0,2,0;MQ=60	GT:PL	1/1:71,6,0
NC_000001.11	4511680	.	A	G	32.4168	.	DP=2;VDB=0.58;SGB=-0.453602;MQ0F=0;AC=2;AN=2;DP4=0,0,0,2;MQ=60	GT:PL	1/1:62,6,0
NC_000001.11	4586903	.	C	T	38.415	.	DP=2;VDB=0.96;SGB=-0.453602;MQSB=1;MQ0F=0;AC=2;AN=2;DP4=0,0,1,1;MQ=60	GT:PL	1/1:68,6,0
NC_000001.11	4627222	.	C	T	37.4152	.	DP=2;VDB=0.76;SGB=-0.453602;MQ0F=0;AC=2;AN=2;DP4=0,0,0,2;MQ=60	GT:PL	1/1:67,6,0
NC_000001.11	4651389	.	cgtgtgtgtgtgtgtgt	cgtgtgtgtgtgt	84	.	INDEL;IDV=2;IMF=1;DP=2;VDB=0.42;SGB=-0.453602;MQSB=1;MQ0F=0;AC=2;AN=2;DP4=0,0,1,1;MQ=60GT:PL	1/1:114,6,0
NC_000001.11	4817605	.	T	G	24.4299	.	DP=2;VDB=0.5;SGB=-0.453602;MQSB=1;MQ0F=0;AC=2;AN=2;DP4=0,0,1,1;MQ=60	GT:PL	1/1:54,6,0

(base) [praharshit@hp ~]$ source activate bioinfo
(bioinfo) [praharshit@hp ~]$ cd grch38
(bioinfo) [praharshit@hp grch38]$ ls grch38.fa*
grch38.fa  grch38.fa.1.bt2  grch38.fa.2.bt2  grch38.fa.3.bt2  grch38.fa.4.bt2  grch38.fa.amb  grch38.fa.ann  grch38.fa.bwt  grch38.fa.fai  grch38.fa.pac  grch38.fa.sa
(bioinfo) [praharshit@hp grch38]$ ls *.bam
gr1ch38.aln.bam  gr1ch38.aln.sort.bam
(bioinfo) [praharshit@hp grch38]$ freebayes -f grch38.fa gr1ch38.aln.sort.bam > bwafreebayes.vcf
(bioinfo) [praharshit@hp grch38]$ grep -v '^#' bwafreebayes.vcf | wc -l
79379
(bioinfo) [praharshit@hp grch38]$ grep -v '^#' bwafreebayes.vcf | head
NC_000001.11	10078	.	CTA	CA	0.112263	.	AB=0.666667;ABP=3.73412;AC=1;AF=0.5;AN=2;AO=2;CIGAR=1M1D1M;DP=3;DPB=2.33333;DPRA=0;EPP=3.0103;EPPR=5.18177;GTI=0;LEN=1;MEANALT=1;MQM=6;MQMR=25;NS=1;NUMALT=1;ODDS=3.68783;PAIRED=1;PAIREDR=1;PAO=0;PQA=0;PQR=0;PRO=0;QA=54;QR=32;RO=1;RPL=0;RPP=7.35324;RPPR=5.18177;RPR=2;RUN=1;SAF=1;SAP=3.0103;SAR=1;SRF=1;SRP=5.18177;SRR=0;TYPE=del	GT:DP:AD:RO:QR:AO:QA:GL	0/1:3:1,2:1:32:2:54:-0.217555,0,-1.51813
NC_000001.11	186810	.	C	G	49.6512	.	AB=0;ABP=0;AC=2;AF=1;AN=2;AO=2;CIGAR=1X;DP=2;DPB=2;DPRA=0;EPP=7.35324;EPPR=0;GTI=0;LEN=1;MEANALT=1;MQM=40;MQMR=0;NS=1;NUMALT=1;ODDS=6.27915;PAIRED=1;PAIREDR=0;PAO=0;PQA=0;PQR=0;PRO=0;QA=76;QR=0;RO=0;RPL=0;RPP=7.35324;RPPR=0;RPR=2;RUN=1;SAF=2;SAP=7.35324;SAR=0;SRF=0;SRP=0;SRR=0;TYPE=snp	GT:DP:AD:RO:QR:AO:QA:GL	1/1:2:0,2:0:0:2:76:-6.77048,-0.60206,0
NC_000001.11	186835	.	A	G	57.0292	.	AB=0;ABP=0;AC=2;AF=1;AN=2;AO=2;CIGAR=1X;DP=2;DPB=2;DPRA=0;EPP=3.0103;EPPR=0;GTI=0;LEN=1;MEANALT=1;MQM=40;MQMR=0;NS=1;NUMALT=1;ODDS=6.27915;PAIRED=1;PAIREDR=0;PAO=0;PQA=0;PQR=0;PRO=0;QA=78;QR=0;RO=0;RPL=1;RPP=3.0103;RPPR=0;RPR=1;RUN=1;SAF=2;SAP=7.35324;SAR=0;SRF=0;SRP=0;SRR=0;TYPE=snp	GT:DP:AD:RO:QR:AO:QA:GL	1/1:2:0,2:0:0:2:78:-6.90623,-0.60206,0
NC_000001.11	187102	.	C	G	53.6293	.	AB=0;ABP=0;AC=2;AF=1;AN=2;AO=2;CIGAR=1X;DP=2;DPB=2;DPRA=0;EPP=7.35324;EPPR=0;GTI=0;LEN=1;MEANALT=1;MQM=50;MQMR=0;NS=1;NUMALT=1;ODDS=6.27915;PAIRED=1;PAIREDR=0;PAO=0;PQA=0;PQR=0;PRO=0;QA=76;QR=0;RO=0;RPL=2;RPP=7.35324;RPPR=0;RPR=0;RUN=1;SAF=0;SAP=7.35324;SAR=2;SRF=0;SRP=0;SRR=0;TYPE=snp	GT:DP:AD:RO:QR:AO:QA:GL	1/1:2:0,2:0:0:2:76:-7.1683,-0.60206,0
NC_000001.11	633681	.	A	C	0.160087	.	AB=0;ABP=0;AC=2;AF=1;AN=2;AO=2;CIGAR=1X;DP=2;DPB=2;DPRA=0;EPP=7.35324;EPPR=0;GTI=0;LEN=1;MEANALT=1;MQM=42.5;MQMR=0;NS=1;NUMALT=1;ODDS=3.28397;PAIRED=1;PAIREDR=0;PAO=0;PQA=0;PQR=0;PRO=0;QA=4;QR=0;RO=0;RPL=0;RPP=7.35324;RPPR=0;RPR=2;RUN=1;SAF=0;SAP=7.35324;SAR=2;SRF=0;SRP=0;SRR=0;TYPE=snp	GT:DP:AD:RO:QR:AO:QA:GL	1/1:2:0,2:0:0:2:4:-0.379968,-0.60206,0
NC_000001.11	633692	.	C	A	0.160087	.	AB=0;ABP=0;AC=2;AF=1;AN=2;AO=2;CIGAR=1X;DP=2;DPB=2;DPRA=0;EPP=7.35324;EPPR=0;GTI=0;LEN=1;MEANALT=1;MQM=42.5;MQMR=0;NS=1;NUMALT=1;ODDS=3.28397;PAIRED=1;PAIREDR=0;PAO=0;PQA=0;PQR=0;PRO=0;QA=4;QR=0;RO=0;RPL=0;RPP=7.35324;RPPR=0;RPR=2;RUN=1;SAF=0;SAP=7.35324;SAR=2;SRF=0;SRP=0;SRR=0;TYPE=snp	GT:DP:AD:RO:QR:AO:QA:GL	1/1:2:0,2:0:0:2:4:-0.379968,-0.60206,0
NC_000001.11	633710	.	G	T	0.607723	.	AB=0;ABP=0;AC=2;AF=1;AN=2;AO=2;CIGAR=1X;DP=2;DPB=2;DPRA=0;EPP=3.0103;EPPR=0;GTI=0;LEN=1;MEANALT=1;MQM=42.5;MQMR=0;NS=1;NUMALT=1;ODDS=1.89768;PAIRED=1;PAIREDR=0;PAO=0;PQA=0;PQR=0;PRO=0;QA=4;QR=0;RO=0;RPL=1;RPP=3.0103;RPPR=0;RPR=1;RUN=1;SAF=0;SAP=7.35324;SAR=2;SRF=0;SRP=0;SRR=0;TYPE=snp	GT:DP:AD:RO:QR:AO:QA:GL	1/1:2:0,2:0:0:2:4:-0.379968,-0.60206,0
NC_000001.11	890174	.	A	G	39.2632	.	AB=0;ABP=0;AC=2;AF=1;AN=2;AO=2;CIGAR=1X;DP=2;DPB=2;DPRA=0;EPP=7.35324;EPPR=0;GTI=0;LEN=1;MEANALT=1;MQM=60;MQMR=0;NS=1;NUMALT=1;ODDS=6.27915;PAIRED=1;PAIREDR=0;PAO=0;PQA=0;PQR=0;PRO=0;QA=54;QR=0;RO=0;RPL=1;RPP=3.0103;RPPR=0;RPR=1;RUN=1;SAF=1;SAP=3.0103;SAR=1;SRF=0;SRP=0;SRR=0;TYPE=snp	GT:DP:AD:RO:QR:AO:QA:GL	1/1:2:0,2:0:0:2:54:-5.12958,-0.60206,0
NC_000001.11	890811	.	G	A	33.4681	.	AB=0.666667;ABP=3.73412;AC=1;AF=0.5;AN=2;AO=2;CIGAR=1X;DP=3;DPB=3;DPRA=0;EPP=3.0103;EPPR=5.18177;GTI=0;LEN=1;MEANALT=1;MQM=60;MQMR=60;NS=1;NUMALT=1;ODDS=1.27958;PAIRED=1;PAIREDR=1;PAO=0;PQA=0;PQR=0;PRO=0;QA=71;QR=32;RO=1;RPL=0;RPP=7.35324;RPPR=5.18177;RPR=2;RUN=1;SAF=1;SAP=3.0103;SAR=1;SRF=1;SRP=5.18177;SRR=0;TYPE=snp	GT:DP:AD:RO:QR:AO:QA:GL	0/1:3:1,2:1:32:2:71:-5.83729,0,-2.29622
NC_000001.11	912843	.	G	A	50.6501	.	AB=0;ABP=0;AC=2;AF=1;AN=2;AO=2;CIGAR=1X;DP=2;DPB=2;DPRA=0;EPP=7.35324;EPPR=0;GTI=0;LEN=1;MEANALT=1;MQM=60;MQMR=0;NS=1;NUMALT=1;ODDS=6.27915;PAIRED=1;PAIREDR=0;PAO=0;PQA=0;PQR=0;PRO=0;QA=66;QR=0;RO=0;RPL=1;RPP=3.0103;RPPR=0;RPR=1;RUN=1;SAF=1;SAP=3.0103;SAR=1;SRF=0;SRP=0;SRR=0;TYPE=snp	GT:DP:AD:RO:QR:AO:QA:GL	1/1:2:0,2:0:0:2:66:-6.26831,-0.60206,0
NC_000001.11	935523	.	T	C	29.7696	.	AB=0;ABP=0;AC=2;AF=1;AN=2;AO=2;CIGAR=1X;DP=2;DPB=2;DPRA=0;EPP=3.0103;EPPR=0;GTI=0;LEN=1;MEANALT=1;MQM=60;MQMR=0;NS=1;NUMALT=1;ODDS=6.27915;PAIRED=1;PAIREDR=0;PAO=0;PQA=0;PQR=0;PRO=0;QA=44;QR=0;RO=0;RPL=0;RPP=7.35324;RPPR=0;RPR=2;RUN=1;SAF=1;SAP=3.0103;SAR=1;SRF=0;SRP=0;SRR=0;TYPE=snp	GT:DP:AD:RO:QR:AO:QA:GL	1/1:2:0,2:0:0:2:44:-4.17981,-0.60206,0

(bioinfo) [praharshit@hp grch38]$ ls grch38.fa*
grch38.fa  grch38.fa.1.bt2  grch38.fa.2.bt2  grch38.fa.3.bt2  grch38.fa.4.bt2  grch38.fa.amb  grch38.fa.ann  grch38.fa.bwt  grch38.fa.fai  grch38.fa.pac  grch38.fa.sa
(bioinfo) [praharshit@hp grch38]$ ls *.bam
gr1ch38.aln.bam  gr1ch38.aln.sort.bam
(bioinfo) [praharshit@hp grch38]$ picard CreateSequenceDictionary REFERENCE=grch38.fa OUTPUT=grch38.dict
INFO	2020-12-02 21:39:17	CreateSequenceDictionary	

********** NOTE: Picard's command line syntax is changing.
**********
********** For more information, please see:
********** https://github.com/broadinstitute/picard/wiki/Command-Line-Syntax-Transition-For-Users-(Pre-Transition)
**********
********** The command line looks like this in the new syntax:
**********
**********    CreateSequenceDictionary -REFERENCE grch38.fa -OUTPUT grch38.dict
**********


21:39:19.435 INFO  NativeLibraryLoader - Loading libgkl_compression.so from jar:file:/home/praharshit/miniconda3/envs/bioinfo/share/picard-2.23.8-0/picard.jar!/com/intel/gkl/native/libgkl_compression.so
[Wed Dec 02 21:39:19 IST 2020] CreateSequenceDictionary OUTPUT=grch38.dict REFERENCE=grch38.fa    TRUNCATE_NAMES_AT_WHITESPACE=true NUM_SEQUENCES=2147483647 VERBOSITY=INFO QUIET=false VALIDATION_STRINGENCY=STRICT COMPRESSION_LEVEL=5 MAX_RECORDS_IN_RAM=500000 CREATE_INDEX=false CREATE_MD5_FILE=false GA4GH_CLIENT_SECRETS=client_secrets.json USE_JDK_DEFLATER=false USE_JDK_INFLATER=false
[Wed Dec 02 21:39:19 IST 2020] Executing as praharshit@hp.iiita.ac.in on Linux 3.10.0-1062.1.2.el7.x86_64 amd64; OpenJDK 64-Bit Server VM 11.0.8-internal+0-adhoc..src; Deflater: Intel; Inflater: Intel; Provider GCS is not available; Picard version: 2.23.8
[Wed Dec 02 21:39:46 IST 2020] picard.sam.CreateSequenceDictionary done. Elapsed time: 0.45 minutes.
Runtime.totalMemory()=536870912

(base) [praharshit@hp ~]$ source activate bioinfo
(bioinfo) [praharshit@hp ~]$ cd grch38
(bioinfo) [praharshit@hp grch38]$ ls grch38.fa*
grch38.fa  grch38.fa.1.bt2  grch38.fa.2.bt2  grch38.fa.3.bt2  grch38.fa.4.bt2  grch38.fa.amb  grch38.fa.ann  grch38.fa.bwt  grch38.fa.fai  grch38.fa.pac  grch38.fa.sa
(bioinfo) [praharshit@hp grch38]$ md5sum *.bt2
a221997da856276ff92c5527fd3de051  grch38.fa.1.bt2
4352d88a78aa39750bf70cd6f27bcaa5  grch38.fa.2.bt2
ad759b6068c6106b4cb4e7801ec6bd27  grch38.fa.3.bt2
42f1f2741e0c7dcd000e844b12d661f3  grch38.fa.4.bt2
(bioinfo) [praharshit@hp grch38]$ md5sum -c *.bt2
md5sum: grch38.fa.1.bt2: no properly formatted MD5 checksum lines found
md5sum: grch38.fa.2.bt2: no properly formatted MD5 checksum lines found
md5sum: grch38.fa.3.bt2: no properly formatted MD5 checksum lines found
md5sum: grch38.fa.4.bt2: no properly formatted MD5 checksum lines found
(bioinfo) [praharshit@hp grch38]$ md5sum grch38.fa.1.bt2 > fw1.md5
(bioinfo) [praharshit@hp grch38]$ md5sum grch38.fa.2.bt2 > fw2.md5
(bioinfo) [praharshit@hp grch38]$ md5sum grch38.fa.3.bt2 > fw3.md5
(bioinfo) [praharshit@hp grch38]$ md5sum grch38.fa.4.bt2 > fw4.md5
(bioinfo) [praharshit@hp grch38]$ md5sum -c fw1.md5
grch38.fa.1.bt2: OK
(bioinfo) [praharshit@hp grch38]$ md5sum -c fw2.md5
grch38.fa.2.bt2: OK
(bioinfo) [praharshit@hp grch38]$ md5sum -c fw3.md5
grch38.fa.3.bt2: OK
(bioinfo) [praharshit@hp grch38]$ md5sum -c fw4.md5
grch38.fa.4.bt2: OK


