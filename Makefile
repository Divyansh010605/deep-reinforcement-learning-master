.PHONY: install format lint clean

install:
	pip install -r requirements.txt

format:
	black src/
	isort src/

lint:
	flake8 src/
	pylint src/

clean:
	find . -type f -name "*.pyc" -delete
	find . -type d -name "__pycache__" -delete
	rm -rf .pytest_cache
