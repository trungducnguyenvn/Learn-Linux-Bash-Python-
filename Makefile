install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	black *.py
	##black formating

lint:
	pylint --disable=R,C hello.py
	##Disable warning in recomended and configuration


test:
	python -m pytest -vv --cov=hello hello_test.py

all: format, lint, test



