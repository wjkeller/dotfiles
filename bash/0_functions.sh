# changing directory to code project
function c { cd ~/code/$1; }

# utility function to check if a command exists on the PATH
function command_exists { type "$1" &> /dev/null; }

