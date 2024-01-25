#!/bin/bash

xcodebuild test -project TDDSampleApp.xcodeproj -scheme TDDSampleApp -sdk iphonesimulator -destination "platform=iOS Simulator,OS=latest,name=iPhone 15"