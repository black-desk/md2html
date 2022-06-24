all:
install:
	mkdir -p "${HOME}/.local/lib/md2html"
	mkdir -p "${HOME}/.local/share/md2html"
	mkdir -p "${HOME}/.local/bin"
	cp -r ./filters "${HOME}/.local/lib/md2html"
	cp -r ./html/* "${HOME}/.local/share/md2html"
	cp ./md2html "${HOME}/.local/bin"
uninstall:
	rm -rf "${HOME}/.local/lib/md2html"
	rm -rf "${HOME}/.local/share/md2html"
	rm "${HOME}/.local/bin/md2html"
