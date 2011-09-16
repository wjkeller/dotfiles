if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

# python virtualenvwrapper
if command_exists virtualenvwrapper.sh; then
    export WORKON_HOME=~/.virtualenvs

    if [ -z "$VIRTUALENVWRAPPER_PYTHON" ]; then
        source `which virtualenvwrapper.sh`
    fi

    export PIP_VIRTUALENV_BASE=$WORKON_HOME
    export PIP_RESPECT_VIRTUALENV=true
fi

# Hello Messsage --------------------------------------------------
echo -e "Kernel Information: " `uname -smr`
echo -e "${COLOR_BROWN}`bash --version`"
echo -ne "${COLOR_GRAY}Uptime: "; uptime
echo -ne "${COLOR_GRAY}Server time is: "; date

