default:

test: lint
	python3 -B -m behave

lint:
	python3 -B -m flake8 --ignore F811,E501

step1: 
	git checkout tag/step1
	make test
	zip -r step1.zip *
	git checkout master
