TARGET ?=
NOW := $(shell date +"%Y%m%dT%H%M%S")
TAG ?= $(NOW)

SCRIPTS_PATH := $(CURDIR)/scripts
IOS_PATH := $(CURDIR)/ios
ANDROID_PATH := $(CURDIR)/android
WEB_PATH := $(CURDIR)/web

.PHONY: build

clean-ios:
	$(SCRIPTS_PATH)/ios-clean.sh

clean-flutter:
	$(SCRIPTS_PATH)/pub-clean.sh

clean: clean-flutter

create:
	flutter create ./

build:

default: