location="$(find . | fzf)"
if [ -z "$location" ];
then
    echo Not Path Found
else
    if [ -z "$1" ] && [ "$1" == "code" ];
    then
        code "$(pwd)/$location"
    else
        echo "$(pwd)/$location"
        cd $location
    fi
fi