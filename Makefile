.PHONY: all clean run venv

all: install

run:
	.venv/bin/pyskel

clean:
	rm -fr */__pycache__
	rm -fr *.egg-info

install: venv
	.venv/bin/pip install -e .

venv: clean
	virtualenv .venv
