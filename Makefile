.POSIX:
PREFIX = ~/.local
.PHONY: install uninstall
install:
	@chmod 755 dmenukaomoji
	@mkdir -p ${DESTDIR}${PREFIX}/bin
	@mkdir -p ${DESTDIR}${PREFIX}/share
	@cp -vf dmenukaomoji ${DESTDIR}${PREFIX}/bin
	@cp -vf kaomoji ${DESTDIR}${PREFIX}/share
	@echo Done installing
uninstall:
	@rm -vf ${DESTDIR}${PREFIX}/bin/dmenukaomoji
	@rm -vf ${DESTDIR}${PREFIX}/share/kaomoji
	@echo Done uninstalling
