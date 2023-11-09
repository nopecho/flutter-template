.PHONY: build

DIR_NAME := $(notdir $(CURDIR))
SCRIPTS_PATH := $(CURDIR)/scripts
LOCK_FILE := pubspec.lock
FILE_EXISTS := $(shell test -f $(LOCK_FILE) && echo "lock")

clean-ios:
	$(SCRIPTS_PATH)/ios-clean.sh

clean-flutter:
	$(SCRIPTS_PATH)/pub-clean.sh

gen:
ifeq ($(FILE_EXISTS), lock)
	$(error $(LOCK_FILE) exists.)
else
	@flutter create ./ --org com.nopecho && \
	SCRIPTS_PATH/pub-add.sh && \
	flutter pub upgrade --major-versions
endif

build:

default: gen