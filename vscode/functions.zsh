# Lets us open files and folders in Visual Studio Code
#
# code (opens Visual Studio Code) 
# code . (opens current directory in Visual Studio Code) 
# code filename (opens somefile in Visual Studio Code)

function code {  
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open -a "Visual Studio Code" "$argPath"
    fi
}
