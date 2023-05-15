location="$(find . -type d -not -path '*/.*' -not -path '*/node_modules*' | fzf)"

if [ -z "$location" ];
then
    echo Not Path Found
else
    if [ "$1" == "code" ];
    then
        code $location
    else
        cd $location
    fi
fi