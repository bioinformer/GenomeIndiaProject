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



