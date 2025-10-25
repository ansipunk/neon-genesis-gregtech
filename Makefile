DEFAULT: build

NGG_VERSION ?= dev
MODPACK_FILE = out/neon-genesis-gregtech-$(NGG_VERSION).mrpack

build:
	mkdir -p out
	rm -f $(MODPACK_FILE)
	cd src && zip -r ../$(MODPACK_FILE) .

clean:
	rm -rf out
