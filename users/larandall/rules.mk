
MOUSEKEY_ENABLE = yes # Mouse keys
EXTRAKEY_ENABLE = yes # Audio control and System control
AUTO_SHIFT_ENABLE = yes # Auto Shift
EXTRAFLAGS += -flto

SRC += larandall.c # keymap

# select alternative base layer alphas
ifneq ($(strip $(LARANDALL_ALPHAS)),)
  OPT_DEFS += -DLARANDALL_ALPHAS_$(LARANDALL_ALPHAS)
endif

# select alternative nav
ifneq ($(strip $(LARANDALL_NAV)),)
  OPT_DEFS += -DLARANDALL_NAV_$(LARANDALL_NAV)
endif

# select alternative subset mappings
ifneq ($(strip $(LARANDALL_MAPPING)),)
  OPT_DEFS += -DLARANDALL_MAPPING_$(LARANDALL_MAPPING)
endif
