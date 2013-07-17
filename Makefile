# Makefile to deploy

NO_COLOR	= \033[0m
COLOR	 	= \033[32;01m
SUCCESS_COLOR	= \033[35;01m

all: build

build:
	@echo "$(COLOR)* Build the site$(NO_COLOR)"
	@./build_page

deploy:
	@echo "$(COLOR)* Deploy the site$(NO_COLOR)"
	@scp -r ./out fantomas@willbreak.it:/home/fantomas/djangos/baccalaureat/