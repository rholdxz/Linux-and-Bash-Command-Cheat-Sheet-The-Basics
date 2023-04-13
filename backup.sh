#!/bin/bash

# This checks if the number of arguments is correct
# If the number of arguments is incorrect ( $# != 2) print error message and exit
if [[ $# != 2 ]]
then
  echo "backup.sh target_directory_name destination_directory_name"
  exit
fi

# This checks if argument 1 and argument 2 are valid directory paths
if [[ ! -d $1 ]] || [[ ! -d $2 ]]
then
  echo "Invalid directory path provided"
  exit
fi

# [TASK 1]
targetDirectory="/home/project"
destinationDirectory="/home"

# [TASK 2]
echo "$targetDirectory"
echo "$destinationDirectory"

# [TASK 3]
currentTS=$(date +%s)

# [TASK 4]
backupFileName="backup-$currentTS"
# We're going to:
  # 1: Go into the target directory
  cd $targetDirectory
  # 2: Create the backup file
  sudo tar -czvf "$backupFileName.tar.gz" "$targetDirectory/backup.sh"
  # 3: Move the backup file to the destination directory
  sudo mv "$targetDirectory/$backupFileName.tar.gz" "$destinationDirectory"
# To make things easier, we will define some useful variables...

# [TASK 5]
origAbsPath=pwd

# [TASK 6]
cd $destinationDirectory # <-
destDirAbsPath=pwd

# [TASK 7]
cd $origAbsPath # <-
cd $targetDirectory # <-

# [TASK 8]
yesterdayTS=

declare -a toBackup

for file in $() # [TASK 9]
do
  # [TASK 10]
  if (())
  then
    # [TASK 11]
  fi
done

# [TASK 12]

# [TASK 13]

# Congratulations! You completed the final project for this course!
