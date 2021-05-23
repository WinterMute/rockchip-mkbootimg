CC      ?= gcc
CFLAGS  ?= -O2 -Wall -Wextra
LDFLAGS ?= 
PREFIX  ?= usr/local

TARGETS = afptool$(EXEEXT) img_maker$(EXEEXT) img_unpack$(EXEEXT) mkbootimg$(EXEEXT) unmkbootimg$(EXEEXT) mkkrnlimg$(EXEEXT) resource_tool$(EXEEXT)
SCRIPTS = mkrootfs mkupdate mkcpiogz unmkcpiogz
DEPS    = Makefile rkafp.h rkcrc.h

all: $(TARGETS)

%.o: %.c $(COMMON) $(DEPS)
	$(CC) $(CFLAGS) -c $< -o $@

img_maker$(EXEEXT): img_maker.o md5.o
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

img_unpack$(EXEEXT): img_unpack.o md5.o
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

mkbootimg$(EXEEXT): mkbootimg.o sha1.o
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

unmkbootimg$(EXEEXT): unmkbootimg.o sha1.o
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

%: %.o
	 $(CC) -o $@ $< $(LDFLAGS)


install: $(TARGETS)
	install -d -m 0755 $(DESTDIR)/$(PREFIX)/bin
	install -m 0755 $(TARGETS) $(DESTDIR)/$(PREFIX)/bin
	install -m 0755 $(SCRIPTS) $(DESTDIR)/$(PREFIX)/bin

.PHONY: clean uninstall

clean:
	rm -f $(TARGETS) *.o

uninstall:
	cd $(DESTDIR)/$(PREFIX)/bin && rm -f $(TARGETS)
	cd $(DESTDIR)/$(PREFIX)/bin && rm -f $(SCRIPTS)
