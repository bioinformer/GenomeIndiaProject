(base) [praharshit@hp ~]$ mkdir -p ibd
(base) [praharshit@hp ~]$ cd ibd
(base) [praharshit@hp ibd]$ mkdir -p rapid germline plink
(base) [praharshit@hp ibd]$ ls
germline  plink  rapid
(base) [praharshit@hp ibd]$ cd rapid
(base) [praharshit@hp rapid]$ ls
(base) [praharshit@hp rapid]$ wget -c http://genome.ucf.edu/RaPID/RaPID_v.1.2
--2020-12-22 11:36:10--  http://genome.ucf.edu/RaPID/RaPID_v.1.2
Connecting to 172.31.2.4:8080... connected.
Proxy request sent, awaiting response... 200 OK
Length: 169216 (165K) [application/x-troff-man]
Saving to: ‘RaPID_v.1.2’

100%[======================================================================================================================================>] 169,216     --.-K/s   in 0.05s   

2020-12-22 11:36:10 (2.98 MB/s) - ‘RaPID_v.1.2’ saved [169216/169216]

(base) [praharshit@hp rapid]$ ls
RaPID_v.1.2
(base) [praharshit@hp rapid]$ source activate bioinfo
(bioinfo) [praharshit@hp rapid]$ chmod +x RaPID_v.1.2 
(bioinfo) [praharshit@hp rapid]$ wget -c http://genome.ucf.edu/RaPID/convert_vcf_to_macs.py
--2020-12-22 12:02:51--  http://genome.ucf.edu/RaPID/convert_vcf_to_macs.py
Connecting to 172.31.2.4:8080... connected.
Proxy request sent, awaiting response... 200 OK
Length: 2341 (2.3K)
Saving to: ‘convert_vcf_to_macs.py’

convert_vcf_to_macs.py                      100%[===========================================================================================>]   2.29K  --.-KB/s    in 0s      

2020-12-22 12:02:52 (316 MB/s) - ‘convert_vcf_to_macs.py’ saved [2341/2341]

(bioinfo) [praharshit@hp rapid]$ ls
convert_vcf_to_macs.py  RaPID_v.1.2
(bioinfo) [praharshit@hp rapid]$ wget -c http://genome.ucf.edu/RaPID/4k_1e7_e0.001.tar.gz
--2020-12-22 12:03:14--  http://genome.ucf.edu/RaPID/4k_1e7_e0.001.tar.gz
Connecting to 172.31.2.4:8080... connected.
Proxy request sent, awaiting response... 200 OK
Length: 15486732 (15M) [application/x-gzip]
Saving to: ‘4k_1e7_e0.001.tar.gz’

4k_1e7_e0.001.tar.gz                        100%[===========================================================================================>]  14.77M   474KB/s    in 37s     

2020-12-22 12:03:53 (407 KB/s) - ‘4k_1e7_e0.001.tar.gz’ saved [15486732/15486732]








