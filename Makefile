setup:
	python3 -m venv ~/.capstoneenv
	source ~/.capstoneenv/bin/activate

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
	wget -O /.hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
    chmod +x /.hadolint	

install_kubernetes_utility:
	# install eksctl
	curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_linux_amd64.tar.gz" | tar xz -C /tmp
	mv /tmp/eksctl /.eksctl
	chmod +x /.eksctl
	
	# install kubectl
	curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
	install -o root -g root -m 0755 kubectl /.kubectl
	chmod +x /.kubectl

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	pylint my_app/app.py
	/.hadolint Dockerfile

all: install lint test
