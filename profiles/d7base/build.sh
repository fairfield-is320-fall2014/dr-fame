#!/bin/sh
# Script to build d7base 1.x
# Make sure the correct number of args was passed from the command line
if [ $# -eq 0 ]; then
  echo "Usage $0 target_build_dir"
  exit 1
fi
DRUSH_OPTS='--working-copy --no-gitinfofile --no-cache'
MAKEFILE='full.build.make'
TARGET=$1
# Make sure we have a target directory
if [ -z "$TARGET" ]; then
  echo "Usage $0 target_build_dir"
  exit 2
fi
CALLPATH=`dirname "$0"`
ABS_CALLPATH=`cd "$CALLPATH"; pwd -P`
BASE_PATH=`cd ..; pwd`

# Temp move settings
echo 'Backing up settings.php...'
mv "$TARGET/sites/default/settings.php" settings.php
set -e
# Remove current drupal dir
echo 'Wiping Drupal directory...'
rm -rf "$TARGET"
# Do the build
echo 'Running drush make...'
drush make $DRUSH_OPTS "$ABS_CALLPATH/$MAKEFILE" "$TARGET"
set +e

#Copy the profile into place
DRUPAL=`cd "$TARGET"; pwd -P`
cp -r . $DRUPAL/profiles/d7base