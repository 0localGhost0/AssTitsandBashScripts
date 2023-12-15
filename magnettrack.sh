#!/bin/bash
extract_urls() {
    local file_path="$1"  
    grep -o -E --directories read '(http:|udp:)//[a-zA-Z0-9]\.[a-zA-Z0-9]:[0-9999]/*' "$file_path" > MAGNET_LINKS.txt

    echo "TORRENTS EXTRACTED"
}

extract_urls "DIRECTORY/FILE GOES HERE"
