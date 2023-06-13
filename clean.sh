#!/bin/bash
#0. clean project config
find . -name "build" -type d -print0 | xargs -0 rm -rf
find . -name ".gradle" -type d -print0 | xargs -0 rm -rf
find . -name ".idea" -type d -print0 | xargs -0 rm -rf
find . -name "*.iml" -type f -print0 | xargs -0 rm -rf

#1. clean ~/.android
rm -rf ~/.android
rm -rf ~/.emulator_console_auth_token

#2. .gradle
rm -rf ~/.gradle/.tmp
rm -rf ~/.gradle/android
rm -rf ~/.gradle/android.lock
rm -rf ~/.gradle/jdks
rm -rf ~/.gradle/kotlin-profile
rm -rf ~/.gradle/native
rm -rf ~/.gradle/daemon
rm -rf ~/.gradle/notifications
rm -rf ~/.gradle/gradle.properties

#3. kill daemon
ps -ef | grep GradleDaemon | grep java | awk '{print $2}' | xargs kill -9


rm -rf flutter_module/.dart_tool
