#!/usr/bin/env bash
#
# PROFILE PICTURE

Profile_picture() {
    local url="https://www.instagram.com/$1/"
    echo -e "${GREEN}[-]${CYAN} Get profile picture of ${YELLOW}${usrname}"
    local data=$(curl -s -A "$useragent" "$url" | grep 'window._sharedData')
    if [[ -z "$data" ]]; then
        echo -e "${RED}[-]${YELLOW} Failed to get content"
        echo -e "${RED}[-]${YELLOW} Check your connection${N}"
    fi
    local get=$(echo "$data" | grep -Po '"profile_pic_url_hd":"\K[^"]*' | sed 's/\\u00.*//g')
    echo -e "${GREEN}[-]${CYAN} Output directory : ${YELLOW}${output_dir}/profile"
    echo -e "${GREEN}[-]${CYAN} Starting download ..."
    for i in ${get}; do
        local name=$(echo "$i" | awk -F/ '{print $8}')
        name2=$(echo "$name" | sed 's/?.*//g')
        curl -s -A "$useragent" "$i" -o "${output_dir}/profile/${usrname}_${name2}.jpg"
        echo -e "${GREEN}[-]${CYAN} Saved : ${YELLOW}${usrname}_${name2}.jpg"
    done
    echo -e "${GREEN}[~]${CYAN} DONE \n"
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
}

if [[ ! -d "${output_dir}/profile" ]]; then
    mkdir "${output_dir}/profile"
fi
echo -ne "${GREEN}[>]${CYAN} Insert username : "
read usrname

Profile_picture "$usrname"
