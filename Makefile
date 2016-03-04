INSTALL = install

default:

install: src/reporter-vz man/reporter-vz.1 man/virtuozzo_event.conf.5 etc/virtuozzo_event.conf
	$(INSTALL) -Dm 644 etc/virtuozzo_event.conf $(DESTDIR)/etc/libreport/events.d/
	$(INSTALL) -Dm 644 man/virtuozzo_event.conf.5 $(DESTDIR)/usr/share/man/man5/
	$(INSTALL) -Dm 644 man/reporter-vz.1 $(DESTDIR)/usr/share/man/man1/
	$(INSTALL) -Dm 755 src/reporter-vz $(DESTDIR)/usr/bin/

.PHONY: default install
