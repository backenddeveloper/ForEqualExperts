default:

test: lint
	python3 -B -m behave

lint:
	python3 -B -m flake8 --ignore F811,E501

step1: 
	git checkout tags/step1
	make test
	zip -r step1.zip *
	git checkout master


step2: 
	git checkout tags/step2
	make test
	zip -r step2.zip *
	git checkout master

step3: 
	git checkout tags/step3
	make test
	zip -r step3.zip *
	git checkout master
