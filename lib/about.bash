#!/usr/bin/env bash

echo -e "${GREEN}[-]${CYAN} Description :"
echo -e "${YELLOW}    This tools was created for download photos,
    videos, profile picture on Instagram without 
    authentication."
echo -e "${GREEN}[-]${CYAN} Version :${YELLOW} 0.1.5"
echo -e "${GREEN}[-]${CYAN} Author  :${YELLOW} https://github.com/wayangcode (Arief R)\n"
echo -ne "${Y1}[c]${CYAN}ontinue/${P1}[e]${CYAN}xit : "
read option
case $option in
    c)
        bash ${0}
        ;;
    e)
        echo -ne "${N}"
        exit 0
        ;;
    *)
        echo -ne "${N}"
        exit 0
        ;;
esac
