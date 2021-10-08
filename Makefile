.PHONY: build install update clean purge

build:
	makepkg

install:
	makepkg -si

update:
	# TODO: check for update?
	updpkgsums
	makepkg --printsrcinfo > .SRCINFO
	git add ./PKGBUILD ./.SRCINFO
	# User: Go commit!

clean:
	rm -rf pkg src dmenu *.diff *.zst
