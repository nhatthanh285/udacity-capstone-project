setup:
	python3 -m venv ~/.devops

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
	wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v2.9.3/hadolint-Linux-x86_64
	chmod +x /bin/hadolint

test:
	#No tests yet

lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1203 app.py

all: install lint test
