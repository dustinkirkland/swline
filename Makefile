all:
	fpc -k--static swline.pas

clean:
	rm -f *.o swline
