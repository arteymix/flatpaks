repo: $(wildcard *.json)
	$(foreach manifest,$?,flatpak-builder --repo=$@ $(shell mktemp -d) ${manifest};)
