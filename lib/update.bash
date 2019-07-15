#!/usr/bin/env bash

update() {
    local dir=$(echo "$(pwd)/..")
    echo -e "${GREEN}[-] ${CYAN}Check lib ..."
    
    local photo="https://raw.githubusercontent.com/wayangcode/instake/master/lib/photos.bash"
    local video="https://raw.githubusercontent.com/wayangcode/instake/master/lib/videos.bash"
    local propic="https://raw.githubusercontent.com/wayangcode/instake/master/lib/profile_picture.bash"
    local about="https://raw.githubusercontent.com/wayangcode/instake/master/lib/about.bash"
    local update="https://raw.githubusercontent.com/wayangcode/instake/master/lib/update.bash"
    
    # PHOTOS SECTION
    local photos=$(curl -s "$photo" | md5sum | awk '{print $1}')
    if [[ ! $photos == $(md5sum lib/photos.bash | awk '{print $1}') ]]; then
        curl -s "$photo" -o lib/photos.bash
        echo -e "${YELLOW}[+]${GREEN} photos.bash updated"
    fi
    
    # VIDEOS SECTION
    local videos=$(curl -s "$video" | md5sum | awk '{print $1}')
    if [[ ! $videos == $(md5sum lib/videos.bash | awk '{print $1}') ]]; then
        curl -s "$video" -o lib/videos.bash
        echo -e "${YELLOW}[+]${GREEN} video.bash updated"
    fi
    
    # PROFILE_PIC SECTION
    local profile_pic=$(curl -s "$propic" | md5sum | awk '{print $1}')
    if [[ ! $profile_pic == $(md5sum lib/profile_picture.bash | awk '{print $1}') ]]; then
        curl -s "$propic" -o lib/profile_picture.bash
        echo -e "${YELLOW}[+]${GREEN} profile_picture.bash updated"
    fi
    
    # UPDATE SECTION
    local uptodate=$(curl -s "$update" | md5sum | awk '{print $1}')
    if [[ ! $uptodate == $(md5sum lib/update.bash | awk '{print $1}') ]]; then
        curl -s "$update" -o lib/update.bash
        echo -e "${YELLOW}[+]${GREEN} update.bash updated"
    fi
    
    # ABOUT SECTION
    local abouts=$(curl -s "$about" | md5sum | awk '{print $1}')
    if [[ ! $abouts == $(md5sum lib/about.bash | awk '{print $1}') ]]; then
        curl -s "$about" -o lib/about.bash
        echo -e "${YELLOW}[+]${GREEN} update.bash updated"
    fi
    
    echo -e "${GREEN}[~] ${CYAN}DONE\n"
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

update
