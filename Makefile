VERSION=$(shell grep __version__ fabkit/__init__.py)
TAG="\n\n\033[0;32m\#\#\# "
END=" \#\#\# \033[0m\n"


clean:
	@echo $(TAG)Cleaning up$(END)
	rm -rf *.egg *.egg-info dist build
	@echo

publish: clean

	@echo $(TAG)Publishing package$(END)
	@echo "$(VERSION)"
	python setup.py sdist bdist_wheel
	twine upload dist/*
	@echo

