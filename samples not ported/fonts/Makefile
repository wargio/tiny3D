.SUFFIXES:
ifeq ($(strip $(PSL1GHT)),)
$(error "PSL1GHT must be set in the environment.")
endif

include $(PSL1GHT)/Makefile.base

TARGET		:=	libfont
BUILD		:=	build
SOURCE		:=	source
INCLUDE		:=	include
DATA		:=	data
LIBS		:=	

LD			:=	ppu-ld

CFLAGS		:=	-g -O2 -Wall

ifneq ($(BUILD),$(notdir $(CURDIR)))

export OUTPUT	:=	$(CURDIR)/$(TARGET)
export VPATH	:=	$(foreach dir,$(SOURCE),$(CURDIR)/$(dir)) \
					$(foreach dir,$(DATA),$(CURDIR)/$(dir))
export BUILDDIR	:=	$(CURDIR)/$(BUILD)
export DEPSDIR	:=	$(BUILDDIR)

CFILES		:= $(foreach dir,$(SOURCE),$(notdir $(wildcard $(dir)/*.c)))
CXXFILES	:= $(foreach dir,$(SOURCE),$(notdir $(wildcard $(dir)/*.cpp)))
SFILES		:= $(foreach dir,$(SOURCE),$(notdir $(wildcard $(dir)/*.S)))
BINFILES	:= $(foreach dir,$(DATA),$(notdir $(wildcard $(dir)/*.bin)))
VCGFILES	:= $(foreach dir,$(SOURCE),$(notdir $(wildcard $(dir)/*.vcg)))

export OFILES	:=	$(CFILES:.c=.o) \
					$(CXXFILES:.cpp=.o) \
					$(SFILES:.S=.o) \
					$(BINFILES:.bin=.bin.o) \
					$(VCGFILES:.vcg=.vcg.o)

export BINFILES	:=	$(BINFILES:.bin=.bin.h)
export VCGFILES	:=	$(VCGFILES:.vcg=.vcg.h)

export INCLUDES	=	$(foreach dir,$(INCLUDE),-I$(CURDIR)/$(dir)) \
					-I$(CURDIR)/$(BUILD) -I$(PSL1GHT)/target/include

.PHONY: $(BUILD) install clean

$(BUILD):
	@[ -d $@ ] || mkdir -p $@
	@make --no-print-directory -C $(BUILD) -f $(CURDIR)/Makefile

install: $(BUILD)
	@echo Copying...
	@cp include/*.h $(PSL1GHT)/target/include
	@cp *.a $(PSL1GHT)/target/lib
	@echo Done!

clean:
	@echo Clean...
	@rm -rf $(BUILD) $(OUTPUT).elf $(OUTPUT).self $(OUTPUT).a

else

DEPENDS	:= $(OFILES:.o=.d)

$(OUTPUT).a: $(OFILES)
$(OFILES): $(BINFILES) $(VCGFILES)

-include $(DEPENDS)

endif
