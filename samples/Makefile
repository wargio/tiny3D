
.PHONY: all pkg clean

FTINCLUDE	:= $(PS3DEV)/portlibs/ppu/include/freetype2/freetype/freetype.h
ZIPINCLUDE	:= $(PS3DEV)/portlibs/ppu/include/zip.h

all:
	$(MAKE) -C fireworks3D
	$(MAKE) -C spheres3D
	$(MAKE) -C sprites2D
	$(MAKE) -C fonts
	$(MAKE) -C surfaces
	@if test -e $(FTINCLUDE); then $(MAKE) -C fonts_from_ttf; fi
#	@if test -e $(ZIPINCLUDE); then $(MAKE) -C ps3loadx; fi
	$(MAKE) -C yuv
	$(MAKE) -C tiny3d_lists
	$(MAKE) -C userviewport
pkg:
	$(MAKE) pkg -C fireworks3D
	$(MAKE) pkg -C spheres3D
	$(MAKE) pkg -C sprites2D
	$(MAKE) pkg -C fonts
	$(MAKE) pkg -C surfaces
	@if test -e $(FTINCLUDE); then $(MAKE) pkg -C fonts_from_ttf; fi
#	@if test -e $(ZIPINCLUDE); then $(MAKE) pkg -C ps3loadx; fi
	$(MAKE) pkg -C yuv
	$(MAKE) pkg -C tiny3d_lists
	$(MAKE) pkg -C userviewport

clean:
	$(MAKE) clean -C fireworks3D
	$(MAKE) clean -C spheres3D
	$(MAKE) clean -C sprites2D
	$(MAKE) clean -C fonts
	$(MAKE) clean -C surfaces
	@if test -e $(FTINCLUDE); then $(MAKE) clean -C fonts_from_ttf; fi
#	@if test -e $(ZIPINCLUDE); then $(MAKE) clean -C ps3loadx; fi
	$(MAKE) clean -C yuv
	$(MAKE) clean -C tiny3d_lists
	$(MAKE) clean -C userviewport


