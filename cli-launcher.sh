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

source Variables.sh
source Software.sh

echo $DIR
echo ${softwarenamearray[*]}
echo ${softwaredescriptionarray[*]}
echo ${needrootarray[*]}
echo /n
echo "input a number"
read index

echo $index

echo ${softwarenamearray[$index]}
echo ${softwaredescriptionarray[$index]}
echo ${needrootarray[$index]}
