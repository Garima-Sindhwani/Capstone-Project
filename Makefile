setup:
	python3 -m venv ~/.capstoneenv
	source ~/.capstoneenv/bin/activate

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
	wget -O /.hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
    chmod +x /.hadolint	

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	pylint my_app/app.py
	/.hadolint Dockerfile

all: install lint test
