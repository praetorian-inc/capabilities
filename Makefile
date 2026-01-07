.PHONY: setup setup-internal submodule-pull submodule-status update help

# Default target
help:
	@echo "Capabilities Super-Repository"
	@echo ""
	@echo "Commands:"
	@echo "  make setup          - Initialize public submodules only"
	@echo "  make setup-internal - Initialize ALL submodules (requires SSH access)"
	@echo "  make submodule-pull - Pull latest changes from all submodules"
	@echo "  make submodule-status - Show status of all submodules"
	@echo "  make update         - Full update (init + pull)"
	@echo ""

# Public setup (excludes private repos)
setup:
	@echo "Initializing public submodules..."
	git submodule update --init modules/fingerprintx
	git submodule update --init modules/nebula
	git submodule update --init modules/noseyparker
	git submodule update --init modules/noseyparker-explorer
	@echo "✅ Public submodules initialized"

# Internal setup (includes private repos - requires SSH access)
setup-internal: setup
	@echo "Initializing private submodules (requires SSH access)..."
	git submodule update --init modules/trajan || echo "⚠️  trajan skipped (no access)"
	git submodule update --init modules/nero || echo "⚠️  nero skipped (no access)"
	git submodule update --init modules/augustus || echo "⚠️  augustus skipped (no access)"
	git submodule update --init modules/noseyparkerplusplus || echo "⚠️  noseyparkerplusplus skipped (no access)"
	git submodule update --init modules/nuclei-templates || echo "⚠️  nuclei-templates skipped (no access)"
	@echo "✅ Setup complete"

# Pull latest changes from all initialized submodules
submodule-pull:
	@echo "Pulling latest changes from all submodules..."
	@git submodule foreach ' \
		REPO=$$(basename "$$path"); \
		echo "🔄 Updating $$REPO..."; \
		if git fetch 2>&1 | grep -qE "(Permission denied|authentication failed|403|401)"; then \
			echo "⚠️  $$REPO skipped (no access)"; \
		elif git fetch && git checkout main && git pull origin main; then \
			echo "✅ $$REPO updated"; \
		else \
			echo "⚠️  $$REPO skipped (error)"; \
		fi; \
		echo ""; \
	' || true
	@echo "✅ Submodule pull completed"

# Show status of all submodules
submodule-status:
	@echo "Submodule status:"
	git submodule status

# Full update workflow
update: setup submodule-pull submodule-status
	@echo "✅ Update completed"
