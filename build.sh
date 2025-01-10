#!/bin/bash

# Create dist directory if it doesn't exist
mkdir -p dist

# Create a directory for Java build artifacts
mkdir -p dist/java

# Compile Java files
javac -d dist/java src/**/*.java

# Copy resources
cp -r src/card_images dist/java/

# Create JAR file
cd dist/java
jar cfm ../Blackjack.jar ../../tools/Blackjack.mf *.class Cards/*.class Players/*.class card_images/*
cd ../..
