.PHONY: dependencies unit-test update-dependencies

dependencies:
	pub get

unit-test:
	pub run test

update-dependencies:
	pub upgrade
