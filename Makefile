.PHONY: docs serve diagram check

docs:
	mkdocs build --strict

serve:
	mkdocs serve

diagram:
	d2 --layout elk docs/assets/diagrams/overview.d2 docs/assets/diagrams/overview.svg
	d2 --layout elk docs/assets/diagrams/network-service-flow.d2 docs/assets/diagrams/network-service-flow.svg

check:
	git diff --check
