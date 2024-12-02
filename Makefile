.POSIX:

OS = $(shell uname -s)
ifndef PREFIX
  PREFIX = /usr/local
endif
ifndef MANPREFIX
  MANPREFIX = $(PREFIX)/share/man
endif

build:
	cd src && go build -o ../bin/cadictua
install: build
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f bin/cadictua bin/uwd bin/trl $(DESTDIR)$(PREFIX)/bin/
	chmod 755 $(DESTDIR)$(PREFIX)/bin/uwd $(DESTDIR)$(PREFIX)/bin/trl $(DESTDIR)$(PREFIX)/bin/cadictua
	mkdir -p $(DESTDIR)$(MANPREFIX)/man1
	cp -f uwd.1 $(DESTDIR)$(MANPREFIX)/man1/uwd.1
	chmod 644 $(DESTDIR)$(MANPREFIX)/man1/uwd.1

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/uwd $(DESTDIR)$(PREFIX)/bin/trl $(DESTDIR)$(PREFIX)/bin/cadictua
	rm -f $(DESTDIR)$(MANPREFIX)/man1/uwd.1

.PHONY: install uninstall
