#/bin/bash
#set -x
set -e

if [ -z $@ ]; then
    echo "Usage: $0 <link>"
    echo ""
    echo "<link> link to video/playlist/video youtube (most of these links, who you can pass to youtube-dl"
    exit 0
fi

set -x
youtube-dl -i --write-description -v --no-check-certificate --write-sub --all-subs $@ 
exit 0
