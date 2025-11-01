.PHONY: chroma serve build clean

serve: chroma
	hugo server -D --bind 0.0.0.0

build: chroma
	hugo

chroma: assets/chroma-light.css assets/chroma-dark.css

assets/chroma-light.css: | assets
	hugo gen chromastyles --style=github > $@

assets/chroma-dark.css: | assets
	hugo gen chromastyles --style=github-dark > $@

assets:
	mkdir -p assets

clean:
	rm -rf public/*
