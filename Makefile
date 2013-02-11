
.PHONY: all pkg clean

all:
	
	$(MAKE) install -C lib
	$(MAKE) install -C libfont
	$(MAKE) -C samples

pkg:
	$(MAKE) install -C lib
	$(MAKE) install -C libfont
	$(MAKE) pkg -C samples

clean:
	$(MAKE) clean -C lib
	$(MAKE) clean -C libfont
	$(MAKE) clean -C samples

