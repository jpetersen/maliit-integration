
install: start-meego-im-uiserver rotate-screen
	install -m 0755 start-meego-im-uiserver /usr/bin
	install -m 0644 *.desktop /etc/xdg/autostart
	install -m 0644 *.desktop /usr/share/gdm/autostart/LoginWindow

	install -m 0644 WeTab.conf /usr/share/meegotouch/targets

	install -m 0644 xbindkeys.conf /etc
	install -m 0755 rotate-screen /usr/bin

	install -m 0644 maliit.conf /etc/X11/xinit/xinput.d
	install -m 0644 -D maliit.conf /etc/X11/xinit/xinputrc

.PHONY: install
