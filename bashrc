
for i in ~/.bash/*.sh ; do
    if [ -r "$i" ]; then
        if [ "$PS1" ]; then
            . $i
        else
            . $i >/dev/null 2>&1
        fi
    fi
done

# use .localrc for settings specific to one system
if [ -f ~/.bashrc.local ]; then
  source ~/.bashrc.local
fi

if [ "$VIRTUAL_ENV" ]; then
    source $VIRTUAL_ENV/bin/activate;
fi

