install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	black *.py
	##black formating

lint:
	pylint --disable=R,C hello.py
	##Disable warning in recomended and configuration
	##Note : linting with too much verbose can cause unconfortable while learning


test:
	python -m pytest -vv --cov=hello hello_test.py

all: format, lint, test



