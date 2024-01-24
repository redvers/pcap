all:
	corral run -- ponyc -d .
	sudo ./pcap1 --ponynoscale 
