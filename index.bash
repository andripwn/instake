#!/usr/bin/env bash
#
#########################
# Instagram Downloader
#  -> Photos
#  -> Videos
#  -> Profile Picture
#########################

##### CONFIG #####
useragent="Mozilla/5.0 (Linux; Android 6.0.1; Redmi 4A Build/MMB29M; wv) \
AppleWebKit/537.36 (KHTML, like Gecko) \
Version/4.0 Chrome/60.0.3112.116 Mobile Safari/537.36"
output_dir="."
##################

##### COLOR #####
Y1="\e[38;5;214m"
P1="\e[38;5;210m"
GREEN="\e[38;5;85m"
RED="\e[38;5;196m"
YELLOW="\e[38;5;227m"
CYAN="\e[38;5;123m"
N="\e[0m"
#################

main() {
    clear
    echo -e "$Y1"'    __ __  __  __  ______  ___  '"$P1"'  _ '"$Y1"'__ __  ____ '"$P1"'_  '
    echo -e "$Y1"'    || ||\ || (( \ | || | // \\\ '"$P1"' // '"$Y1"'|| // ||    '"$P1"'\\\ '
    echo -e "$Y1"'    || ||\\\||  \\\    ||   ||=|| '"$P1"'((  '"$Y1"'||<<  ||==  '"$P1"' ))'
    echo -e "$Y1"'    || || \|| \_))   ||   || || '"$P1"' \\\ '"$Y1"'|| \\\ ||___ '"$P1"'// '
    echo -e "$Y1"
    echo -e "$N"
    echo -e "${GREEN}[+]${CYAN} Option : ${YELLOW}[1]${CYAN} Photos"
    echo -e "             ${YELLOW}[2]${CYAN} Videos"
    echo -e "             ${YELLOW}[3]${CYAN} Profile Picture"
    echo -e "             ${YELLOW}[02]${CYAN} About"
    echo -e "             ${YELLOW}[01]${CYAN} Update"
    echo -e "             ${YELLOW}[00]${CYAN} Exit \n"
    echo -ne "${GREEN}[>]${CYAN} Select option number : "
    read option
    case $option in
        1)
            source lib/photos.bash
            ;;
        2)
            source lib/videos.bash
            ;;
        3)
            source lib/profile_picture.bash
            ;;
        02)
            source lib/about.bash
            ;;
        01)
            source lib/update.bash
            ;;
        00)
            echo -ne "${N}"
            exit 0
            ;;
        *)
            echo -e "${RED}[-]${YELLOW} Invalid option"
            exit 0
            ;;
    esac
}

main