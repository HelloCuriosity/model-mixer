.PHONY: dependencies unit-test update-dependencies all

dependencies:
	pub get

unit-test:
	pub run test

update-dependencies:
	pub upgrade

all: dependencies update-dependencies unit-test