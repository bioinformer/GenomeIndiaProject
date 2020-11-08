# Dataset "hg19 chr1 from ucsc"
$ ../.././seqkit stats chr1.fasta 
file        format  type  num_seqs      sum_len      min_len      avg_len      max_len
chr1.fasta  FASTA   DNA          1  249,250,621  249,250,621  249,250,621  249,250,621
# Compute filesize in Bytes,
$ du chr1.fasta 
248528	chr1.fasta

# (1) Apply TAR.GZ compression,
$ tar -czvf chr1.tar.gz chr1.fasta
chr1.fasta
# Compute compression ratio,
$ du chr1.tar.gz 
72124	chr1.tar.gz
# (248528 - 72124) * 100 / 248528 = 70.9795274577 %

# (2) Apply GZIP compression,
$ gzip chr1.fasta 
# Compute compression-ratio using In-Built [-l] Qualifier,
$ gzip -l chr1.fasta.gz 
         compressed        uncompressed  ratio uncompressed_name
           73773669           254235640  71.0% chr1.fasta
# Thus GZIP is almost as good as TAR.GZ in this case of Choice of dataset.

# (3) Perform "Lempel–Ziv–Markov chain Algorithm" (LZMA) compression,
# First Uncompress the GZ file archive;
$ gunzip -c chr1.fasta.gz | tee chr1.fasta
$ lzma -c --stdout chr1.fasta> chr1.fasta.lzma
# Computation of Compression ratio,
$ du chr1.fasta.lzma 
57872	chr1.fasta.lzma
# (248528 - 57872) * 100 / 248528 = 76.7140925771 % { Better than TAR.GZ(1) and GZIP(2) above}

# (4) Assess XZ-compression (Extreme version, in Order to improve Compression-Ratio)
$ xz -zke chr1.fasta
# Compute Compression Ratio,
$ du chr1.fasta.xz 
57896	chr1.fasta.xz
# (248528 - 57896) * 100 / 248528 = 76.7044357175 (Marginally as good as LZMA(3))

# (5) Perform BUNZIP-2 compression,
$ bzip2 -zkvs chr1.fasta
  chr1.fasta:  3.880:1,  2.062 bits/byte, 74.23% saved, 254235640 in, 65517353 out.
# Evaluate its Compression ratio.
$ du chr1.fasta.bz2 
64052	chr1.fasta.bz2
# (248528 - 64052) * 100 / 248528 = 74.2274512329 [Inbetween (1) TAR.GZ, (2) GZIP and (3) LZMA, (4) BZIP2].

# (6) Implement "7-Zip" compression archival,
$ 7z a chr1.fasta.7z chr1.fasta

7-Zip [64] 15.09 beta : Copyright (c) 1999-2015 Igor Pavlov : 2015-10-16
p7zip Version 15.09 beta (locale=en_US.UTF-8,Utf16=on,HugeFiles=on,64 bits,16 CPUs x64)

Scanning the drive:
1 file, 254235640 bytes (243 MiB)

Creating archive: chr1.fasta.7z

Items to compress: 1

                      
Files read from disk: 1
Archive size: 59157145 bytes (57 MiB)
Everything is Ok
# Calculate the Compression efficiency,
$ du chr1.fasta.7z 
57836	chr1.fasta.7z
(248528 - 57836) * 100 / 248528 = 76.7285778665 %
# THEREFORE, AMONGST ABOVE, "7-ZIP" OFFERS THE BEST TRADE-OFF WHILE COMPRESSING FASTA FILES!

# List All the Files (Un-compression "HG-19 Chromosome-1" and Compressed Ones, to know "MB" File-sizes)
$ ls -lha
total 616M
drwxrwxr-x 2 praharshit praharshit 4.0K Nov  8 23:40 .
drwxrwxr-x 4 praharshit praharshit 4.0K Nov  8 20:27 ..
-rw-rw-r-- 1 praharshit praharshit 243M Nov  8 20:58 chr1.fasta
-rw-rw-r-- 1 praharshit praharshit  57M Nov  8 23:35 chr1.fasta.7z
-rw-rw-r-- 1 praharshit praharshit  63M Nov  8 20:58 chr1.fasta.bz2
-rw-rw-r-- 1 praharshit praharshit  71M Nov  6 19:57 chr1.fasta.gz
-rw-rw-r-- 1 praharshit praharshit  57M Nov  8 21:05 chr1.fasta.lzma
-rw-rw-r-- 1 praharshit praharshit  57M Nov  8 20:58 chr1.fasta.xz
-rw-rw-r-- 1 praharshit praharshit  71M Nov  8 20:32 chr1.tar.gz

# List the same as Above, to check File-sizes in Bytes...
$ du *
248528	chr1.fasta
57836	chr1.fasta.7z
64052	chr1.fasta.bz2
72124	chr1.fasta.gz
57872	chr1.fasta.lzma
57896	chr1.fasta.xz
72124	chr1.tar.gz
