.PHONY: analyze dependencies unit-test update-dependencies all

analyze:
	dartanalyzer --fatal-warnings lib

dependencies:
	pub get

unit-test:
	pub run test

update-dependencies:
	pub upgrade

all: dependencies update-dependencies analyze unit-test
