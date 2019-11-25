#!/bin/bash

#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
#                                                         #
#                  CLI Launcher Script                    #
#                                                         #
#     This script allows a user to quickly run CLI        #
#         programs that are difficult to remember.        #
#                                                         #
#         This script is written specifically for         #
#                    Ubuntu 18.04 LTS.                    #
#                                                         #
#              Written by:  Tyler M Johnson               #
#           https://github.com/yippieskippie24            #
#                                                         #
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#


#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
#                     Source files                        #
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#

source Variables-and-functions.sh
source Software


#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
#                        Sandbox                          #
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#

directorycheck

menu

#checks if sudo is needed for that software to run
if [[ ${needrootarray[$index]} == 'yes' ]]; then
    rootcheck
fi


##sleep 2
#clears screen
clear
#run selected software (with sudo if needed)
if [ $index == 'q' ]; then
  exiterror="User quit the script"
  EXIT
else $SUDO ${softwarecmdarray[$index]}
fi
