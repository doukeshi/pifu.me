.PHONY: chroma serve clean

serve: chroma
	hugo server -D --bind 0.0.0.0

chroma: assets/chroma-light.css assets/chroma-dark.css

assets/chroma-light.css:
	hugo gen chromastyles --style=github > $@

assets/chroma-dark.css:
	hugo gen chromastyles --style=github-dark > $@

clean:
	rm -rf public/*
