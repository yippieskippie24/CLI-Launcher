#!/bin/bash

#this file declares all Variables used in the CLI-Launcher

#Saves the directory that the ./cli-launcher was run from to $DIR
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )


softwarenamearray=()


softwarecmdarray=()
#the name of the software. this needs to be the named used to launch the software.

softwaredescriptionarray=()
#A simple description of the software

needrootarray=()
#array used to document if root is needed to run the software.


SUDO=""
#used to append 'sudo' to a command if needed.

index=""
#variable used to identify the index of the software to be installed.

#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
#                       functions                         #
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#


function rootcheck() {
## ROOT CHECK ##
# Are we root? If not use sudo
#This can be called for any command by running the "rootcheck" function.  Need to have the $SUDO appended before all commands to ensure sudo can be added if needed.
if [[ $EUID -eq 0 ]];then
    SUDO=""
else
    echo "Sudo will appended to the command."
    # Check if it is actually installed
    # If it isn't, exit because the install cannot complete
    if [[ $(dpkg-query -s sudo) ]];then
        export SUDO="sudo"
    else
        echo "Please install sudo or run this as root."
        exit 1
    fi
fi
}


#Verify necessary files are present in the same directory as cli-launcher.sh
function directorycheck() {
  if [ ! -f "$DIR/Software" ]; then
      exiterror=$(echo "Software does not exist. This file defines the software that can be run.  Without this scrip does not work.")
      EXIT
  fi
}

function menu() {
  #prints out the list of software available to run
  for i in "${!softwarenamearray[@]}"; do
    printf "%s\t%s\n" "$i" "${softwarenamearray[$i]}"
  done
  echo "enter "q" to quit"
  #pring a blank line
  printf '\n'
  #ask the user for input
  echo "Which Program do you want to run?"
  #saves the users input to the $index variable
  read index
}

function EXIT() {
  echo Exit reason: $exiterror
  exit 1


}