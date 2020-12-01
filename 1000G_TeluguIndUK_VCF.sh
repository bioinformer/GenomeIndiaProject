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

