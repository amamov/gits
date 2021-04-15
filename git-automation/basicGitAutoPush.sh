#!/bin/sh

# main branch에 자동 push

# chmod 755 basicGitAutoPush.sh
# ./basicGitAutoPush.sh

echo "git auto load"
git add .
echo "check staged files"
git status
echo "is ok? [y/N]"
read answer
if [ $answer = "y" ]
then
    echo "input the commit message"
    read message
    if [ $message != "" ]
    then
        git commit -m $message
    else
        git commit -m "commit"
    fi
    git push -u origin main
else
    echo "fuck..."
fi

exit 0



