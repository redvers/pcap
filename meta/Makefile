compile:
	ponyc -d .

gen:	structs use functions

structs:
	java -jar /usr/share/java/Saxon-HE.jar -xi structs.xml ../../makestruct.xsl > structs.pony

use:
	java -jar /usr/share/java/Saxon-HE.jar -xi use.xml ../../makeuse.xsl > use.pony

functions:
	echo "primitive Clibpcap" > functions.pony
	java -jar /usr/share/java/Saxon-HE.jar -xi use.xml ../../makefunctions.xsl >> functions.pony


castxml:
	../castxml2pony -x pcap.xml -E
	../castxml2pony -x pcap.xml -s f40 f50
	../castxml2pony -x pcap.xml -u f40 f50
