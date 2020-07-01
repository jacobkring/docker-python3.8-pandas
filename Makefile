RELEASE = 20.7.1

all: test

build:
	docker build -t pandas:$(RELEASE) .	

test:
	docker run pandas:$(RELEASE) python -c 'import pandas'
