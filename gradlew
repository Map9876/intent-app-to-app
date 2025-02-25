#!/usr/bin/env sh

# Copyright 2009-2016 the original author or authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# -----------------------------------------------------------------------------
# Gradle start up script for UN*X
# -----------------------------------------------------------------------------

# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
DEFAULT_JVM_OPTS=""

APP_NAME="Gradle"
APP_BASE_NAME=`basename "$0"`

# Use the maximum available, or set MAX_FD != -1 to use that value.
MAX_FD="maximum"

# Make sure JAVA_HOME is set.
if [ -z "$JAVA_HOME" ] ; then
  JAVA_HOME=`/usr/libexec/java_home`
fi
if [ -z "$JAVA_HOME" ] ; then
  echo "ERROR: JAVA_HOME is not set."
  exit 1
fi

# For Darwin, add options to specify how the application appears in the dock
darwin=false
case "`uname`" in
  Darwin*) darwin=true ;;
esac

# Resolve the location of the Gradle distribution base dir
BASE_DIR=`dirname "$0"`

# Resolve the real path of the script
#  - OS X: readlink does not support -f option, so we need this function to resolve the real path
realpath() {
  local TARGET_FILE="$1"

  cd `dirname "$TARGET_FILE"`
  TARGET_FILE=`basename "$TARGET_FILE"`

  # Iterate down a (possible) chain of symlinks
  while [ -L "$TARGET_FILE" ]
  do
    TARGET_FILE=`readlink "$TARGET_FILE"`
    cd `dirname "$TARGET_FILE"`
    TARGET_FILE=`basename "$TARGET_FILE"`
  done

  # Compute the canonicalized name by finding the absolute path
  PHYS_DIR=`pwd -P`
  RESULT="$PHYS_DIR/$TARGET_FILE"
  echo "$RESULT"
}

# Set GRADLE_HOME to the absolute path of the distribution base dir
if [ -z "$GRADLE_HOME" ] ; then
  GRADLE_HOME=`realpath "$BASE_DIR/.."`
fi

# Add default JVM options if not overridden
if [ -z "$DEFAULT_JVM_OPTS" ] ; then
  DEFAULT_JVM_OPTS="-Xmx64m -Xms64m"
fi

# Collect all arguments for the Gradle process
ALL_JVM_OPTS="$DEFAULT_JVM_OPTS $JAVA_OPTS $GRADLE_OPTS"

# Collect all arguments for the Gradle process
ALL_ARGS="$ALL_JVM_OPTS"

# Collect all arguments for the Gradle process
ALL_PROPERTIES=""

# Collect all arguments for the Gradle process
ALL_SYSTEM_PROPERTIES=""

# Collect all arguments for the Gradle process
ALL_DAEMON_PROPERTIES=""

# Collect all arguments for the Gradle process
ALL_INIT_SCRIPTS=""

# Collect the properties specified on the command line
while [ $# -gt 0 ]; do
  case $1 in
    -D*)
      ALL_PROPERTIES="$ALL_PROPERTIES $1"
      ;;
    -I*)
      ALL_INIT_SCRIPTS="$ALL_INIT_SCRIPTS $1"
      ;;
    -P*)
      ALL_SYSTEM_PROPERTIES="$ALL_SYSTEM_PROPERTIES $1"
      ;;
    --daemon)
      ALL_DAEMON_PROPERTIES="--daemon"
      ;;
    *)
      ALL_ARGS="$ALL_ARGS \"$1\""
      ;;
  esac
  shift
done

# Set the full command to run the Gradle process
FULL_COMMAND="$JAVA_HOME/bin/java $ALL_JVM_OPTS -classpath \"$CLASSPATH\" org.gradle.wrapper.GradleWrapperMain $ALL_PROPERTIES $ALL_INIT_SCRIPTS $ALL_SYSTEM_PROPERTIES $ALL_DAEMON_PROPERTIES $ALL_ARGS"

# Print the command for debugging
if [ "$GRADLE_PRINT_COMMAND" = "true" ]; then
  echo "$FULL_COMMAND"
fi

# Run the Gradle process
exec "$FULL_COMMAND"