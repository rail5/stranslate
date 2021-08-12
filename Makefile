PREFIX=/usr/local

test: stranslate.sh
	shellcheck -s sh stranslate.sh

install: stranslate.sh stranslate.1
	mkdir -p ${DESTDIR}${PREFIX}/bin/
	install stranslate.sh ${DESTDIR}${PREFIX}/bin/stranslate
	mkdir -p /usr/share/man/man1/
	cp -f stranslate.1 /usr/share/man/man1/

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/stranslate
	rm -f /usr/share/man/man1/stranslate.1

.PHONY: test install uninstall
