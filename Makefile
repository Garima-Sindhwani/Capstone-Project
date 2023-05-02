setup:
	python3 -m venv ~/.capstoneenv
	source ~/.capstoneenv/bin/activate

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	pylint my_app/app.py
	#hadolint Dockerfile

all: install lint test
