# Makefile
#
# A collection of project commands you can run with "make <target>".
# Example: make web, make test, make build
#
# Why use this? It works in any terminal, on any machine, in any editor.
# Anyone can clone the project and run "make web" without reading documentation.

# Start the dev server
web:
	npm run start

# Run the test suite
test:
	npm test

# Compile CSS
css:
	npm run css

# Build for production
build:
	npm run build
	npm run css

# Open the project in the browser (Mac: open, Linux: xdg-open, Windows: start)
open:
	open http://localhost:3000

# View logs
logs:
	tail -f logs/app.log

# Chain targets — "make deploy" runs build first, then the deploy script
deploy: build
	./scripts/deploy.sh

# Remove build artifacts
clean:
	rm -rf dist
	rm -rf .cache
