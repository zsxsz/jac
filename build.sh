#!/bin/bash

# Create dist directory
mkdir -p dist

# Compile Java files
javac -d dist src/**/*.java

# Copy resources
cp -r src/card_images dist/

# Create JAR file
cd dist
jar cfm Blackjack.jar ../tools/Blackjack.mf *.class Cards/*.class Players/*.class card_images/*
cd ..
