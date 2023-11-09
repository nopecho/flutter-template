#!/bin/sh

cd ../ && \
rm -rf pubspec.lock && \
flutter pub cache clean && \
flutter clean && \
flutter pub get