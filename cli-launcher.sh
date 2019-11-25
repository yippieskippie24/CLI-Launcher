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

source Variables-and-functions
source Software

#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
#                    Calling Functions                    #
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
#calls the directory check function which validates that the "Software" file exists.
directorycheck

#calls the menu function which generates the menu and prompts for input
menu

#checks the software file to see if sudo is needed to run that software, if it is, it ensures that sudo (or root) has been used.
#If not, it promopts the user for their sudo password.
sudocheck

#runs the software selected by the user
run

#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
#                        Sandbox                          #
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
