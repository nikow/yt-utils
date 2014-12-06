#!/bin/bash
#set -x
#set -e

if [ -z $@ ]; then
    echo "Usage: $0 <link>"
    echo ""
    echo "Where link you can pass every link able to pass to youtube-dl. It mean not only YT links!"
    exit 0
fi

echo "#!/bin/bash" > update.sh
echo "" >> update.sh
echo "set -e" >> update.sh
echo "set -x" >> update.sh
echo "" >> update.sh
echo "while true ; do yt \"$1\" && break ; done" >> update.sh
chmod +x update.sh
stat update.sh

