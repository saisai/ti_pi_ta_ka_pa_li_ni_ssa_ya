comment=$2
file=$3

function editCommitOne
{
    git -c user.name="sai" -c user.email="sai@gmail.com" commit -m $comment -- $file
}

function editCommit
{
    git -c user.name="sai" -c user.email="sai@gmail.com" commit -am "$comment"
}

function addCommit
{
    git -c user.name="sai" -c user.email="sai@gmail.com" commit -m $comment
}


function PULL
{
    git -c user.name="sai" -c user.email="sai@gmail.com" pull
}

function PUSH
{
    git -c user.name="sai" -c user.email="sai@gmail.com" push
}


case "$1" in
    (PUSH)
        PUSH
        exit 3
        ;;
    (addCommit)
        addCommit
        exit 2
        ;;
    (editCommit)
        editCommit
        exit 1
        ;;
    (editCommitOne)
        editCommitOne
        exit 1
        ;;
    (PULL)
        PULL
        exit 0
        ;;
    (*)
        echo "Usage :$) { addCommit | editCommit | PULL | PUSH }"
        echo "Usage :$) { editCommitOne comment 'edited file' }"
        exit 1
        ;;
esac

exit $?

# http://unix.stackexchange.com/questions/137969/bash-function-execution-from-command-line
# http://wiki.linuxquestions.org/wiki/Creating_startup_scripts
#if [ $# -ne 1 ]; then
#    echo " "
#    echo $0: usage: $0 param
#    exit 1
#fi

