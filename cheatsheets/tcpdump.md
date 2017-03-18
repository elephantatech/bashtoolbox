# TCPDUMP command cheatsheet

The goal of this cheat sheet is to provide you with a how tcpdump command should be executed for various scenarios you may come across.

##### NOTE: You might need sudo access to run the command

Basic syntax for monitoring traffic on eth0:

    $ tcpdump -i eth0 -ln

show more verbose by adding -v or -vv or -vvv:

    $ tcpdump -i eth0 -lnvv

Get the tcpdump capture in a file:

    $ tcpdump -i eth0 -s 0 -w /tmp/tcpdumpcapture.pcap

Capture any packets where the source or destination host mac aa:00:11:cc:33:ff:

    $ tcpdump ether host aa:00:11:cc:33:ff

Capture any packets where the source or destination host is 192.168.100.100:

    $tcpdump -n host 192.168.100.100

Capture any packets where the source or destination network is 192.168.1.0/24:

    $tcpdump -n net 192.168.1.0/24

Capture all dns traffic on post 53

    $tcpdump -i ANY port 53

Capture all DHCP traffic on port 67 and 68

    $tcpdump -i ANY port 67 and port 68

Capture everything except ssh traffic on port 22

    $tcpdump -i ANY not port 22

Capture SNMP traffic on port 161 and SNMP trap traffic on port 162

    $tcpdump -i ANY port 161 and port 162
