#!/usr/bin/env sh
APP_BASE_NAME=`basename "$0"`
APP_HOME=`dirname "$0"`
exec "$APP_HOME/gradle/wrapper/gradle-wrapper.jar" "$@"
