.PHONY: setup setup-internal update help

# Default target
help:
	@echo "Capabilities Super-Repository"
	@echo ""
	@echo "Commands:"
	@echo "  make setup          - Initialize public submodules only"
	@echo "  make setup-internal - Initialize ALL submodules (requires SSH access)"
	@echo "  make update         - Pull latest from all initialized submodules"
	@echo ""

# Public setup (excludes private repos)
setup:
	git submodule update --init modules/fingerprintx
	git submodule update --init modules/nebula
	git submodule update --init modules/noseyparker
	git submodule update --init modules/noseyparker-explorer

# Internal setup (includes private repos - requires SSH access)
setup-internal: setup
	git submodule update --init modules/trajan
	git submodule update --init modules/nero
	git submodule update --init modules/augustus
	git submodule update --init modules/noseyparkerplusplus
	git submodule update --init modules/nuclei-templates

# Update all initialized submodules
update:
	git submodule update --remote --merge
