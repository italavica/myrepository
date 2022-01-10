setup:
	python3 -m venv ~/.myrepository

install:
	pip install -r requirements.txt

test:
	python -m pytest -vv --cov=myrepositorylib tests/*.py

lint:
	pylint --disable=R,C myrepositorylib

all: install lint test

