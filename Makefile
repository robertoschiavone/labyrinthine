.DEFAULT_GOAL := all

PROJECT := labyrinthine

.PHONY: all
all: clean uninstall install

.PHONY: clean
clean:
	rm -rf __pycache__
	rm -rf build
	rm -rf dist
	find . -name $(PROJECT).egg-info -type d -prune -exec rm -rf {} +

.PHONY: uninstall
uninstall:
	pip uninstall labyrinthine

.PHONY: install
install:
	pip install .