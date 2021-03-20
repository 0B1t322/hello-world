TARGET = helloworld
PREFIX ?= /usr/local/bin

.PHONY: all clean install uninstall

all: $(TARGET)
	
helloworld.o: helloworld.c
	gcc -c -o helloworld.o  helloworld.c
main.o: main.c
	gcc -c -o main.o main.c
$(TARGET): main.o helloworld.o
	gcc -o $(TARGET) main.o helloworld.o
clean:
	rm -rf $(TARGET) *.o 
install:
	install $(TARGET) $(PREFIX)
uninstall:
	rm -rf $(PREFIX)/$(TARGET)
