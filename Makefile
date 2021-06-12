.PHONY: analyze coverage dependencies outdated publish test update-dependencies all

analyze:
	dartanalyzer --fatal-warnings lib

coverage:
	pub run test_cov

dependencies:
	pub get

outdated:
	pub outdated

publish:
	 pub publish

test:
	pub run test

update-dependencies:
	pub upgrade

all: dependencies update-dependencies analyze test
