
.PHONY: all pkg clean

all:
	
	@$(MAKE) install -C lib --no-print-directory
	@$(MAKE) install -C libfont --no-print-directory
	@$(MAKE) -C samples --no-print-directory

pkg:
	@$(MAKE) install -C lib --no-print-directory
	@$(MAKE) install -C libfont --no-print-directory
	@$(MAKE) pkg -C samples --no-print-directory

clean:
	@$(MAKE) clean -C lib --no-print-directory
	@$(MAKE) clean -C libfont --no-print-directory
	@$(MAKE) clean -C samples --no-print-directory

