install:
	pip install -r requirements.txt

test:
	# python -m pytest -vv --cov=myrepolib tests/*.py
	# python -m pytest --nbval notebook.ipynb


lint:
	hadolint Dockerfile
	pylint --disable=R,C dockerproj.py

all: install lint test
