# Variables:
PROGRAM = sym/SerialKDPProxy
OBJECTS = obj/SerialKDPProxy.o obj/kdp_serial.o

CFLAGS = -Wall

# Phony rules:
all: $(PROGRAM)

clean:
	rm -f $(PROGRAM) $(OBJECTS)

# Programs to build:
$(PROGRAM): $(OBJECTS)
	$(CC) -g -D_BSD_SOURCE -o $(PROGRAM) $(OBJECTS)

# Objects to build:
obj/SerialKDPProxy.o: src/SerialKDPProxy.c
	$(COMPILE.c) -g -D_BSD_SOURCE  $(OUTPUT_OPTION) $<

obj/kdp_serial.o: src/kdp_serial.c
	$(COMPILE.c) -g -D_BSD_SOURCE $(OUTPUT_OPTION) $<


