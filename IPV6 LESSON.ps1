IPV6 SUBNETTING:
fec0:aabb:fafa:dada::/64 subnet to 22 offices/subnets:
Con:  22 -> 5bits
Add: /64 + /5 = /69
iChamba:
	    8  4  2   1    8  4  2   1     8  4  2   1    8  4  2   1 
1st     0  0  0   0    0   : 0000:
2nd     0  0  0   0    1     :0800:
3rd     0  0  0   1    0     :1000:
4th     0  0  0   1    1     :1800:
5th     0  0  1   0    0     :2000:
6th     0  0  1   0    1     :2800:
7th     0  0  1   1    0     :3000
5th     0  0  1   1    1     :3800  


2
cafe:face:fafa:dada::/64 subnet to 4500 offices/subnets:
Con:  4500 -> 13bits
Add: /64 + /13 = /77
iChamba:
	    8  4  2   1    8  4  2   1     8  4  2   1    8  4  2   1 

config t
ipv6 unicast-routing
int loopback 1
ipv6 address cafe:face:fafa:dada:0000::a/77
int loopback 2
ipv6 address cafe:face:fafa:dada:0008::a/77
int loopback 3
ipv6 address cafe:face:fafa:dada:0010::a/77
int loopback 4
ipv6 address cafe:face:fafa:dada:0018::a/77
int loopback 5
ipv6 address cafe:face:fafa:dada:0020::a/77
int loopback 6
ipv6 address cafe:face:fafa:dada:0028::a/77
do sh ipv6 int br


3
fafa:cafe:fafa:dada::/64 subnet to 800 offices/subnets:
Con:  800 -> 10bits
Add: /64 + /10 = /74
iChamba:
	    8  4  2   1    8  4  2   1     8  4  2   1    8  4  2   1 
 1st    0  0  0   0    0  0  0   0     0  0  0   
 2nd    0  0  0   0    0  0  0   0     0  4  0   
 3rd    0  0  0   0    0  0  0   0     8  4   
 4th    0  0  0   0    0  0  0   1     c  0
 4th    0  0  0   0    0  0  0   1     c  0


 config t
ipv6 unicast-routing
int loopback 1
ipv6 address cafe:face:fafa:dada:0000::a/74
int loopback 2
ipv6 address cafe:face:fafa:dada:0040::a/74
int loopback 3
ipv6 address cafe:face:fafa:dada:0080::a/74
int loopback 4
ipv6 address cafe:face:fafa:dada:00c0::a/74
int loopback 5
ipv6 address cafe:face:fafa:dada:0100::a/74
int loopback 6
ipv6 address cafe:face:fafa:dada:0140::a/74
do sh ipv6 int br


3
cafe:cafe:face:face::/64 subnet to 25 offices/subnets:
Con:  25 -> 5bits
Add: /64 + /5 = /69
iChamba:

 config t
ipv6 unicast-routing
int loopback 1
ipv6 address cafe:face:fafa:dada:0000::a/69
int loopback 2
ipv6 address cafe:face:fafa:dada:0800::a/69
int loopback 3
ipv6 address cafe:face:fafa:dada:1000::a/69
int loopback 4
ipv6 address cafe:face:fafa:dada:1800::a/69
int loopback 5
ipv6 address cafe:face:fafa:dada:2000::a/69
int loopback 6
ipv6 address cafe:face:fafa:dada:2800::a/69
do sh ipv6 int br
