all:
	rm -f libshim.a ../pcap/libshim.a
	clang -c -o shim.o shim.c 
	ar rcs libshim.a shim.o
	mv libshim.a ../pcap/

