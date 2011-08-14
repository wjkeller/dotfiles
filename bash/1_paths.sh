# macports
if [ -d /opt/local/sbin ]; then 
        export PATH=/opt/local/sbin:$PATH
fi
if [ -d /opt/local/bin ]; then 
        export PATH=/opt/local/bin:$PATH
fi

# fink
if [ -d /sw ]; then 
        export PATH=/sw/bin:$PATH
fi

# homebrew
if [ -d ${HOME}/.homebrew/bin ]; then
  export PATH=${HOME}/.homebrew/bin:${PATH}
fi
if [ -d /usr/local/bin ]; then   
  export PATH=/usr/local/bin:${PATH}
fi
if [ -d /usr/local/sbin ]; then
  export PATH=/usr/local/sbin:${PATH}
fi

# ccache
if command_exists ccache; then
    if command_exists brew; then
        CCACHE_VERSION=`ccache -V | awk 'NR==1 {print $3}'`
        CCACHE_LIBEXEC=`brew --cellar ccache`/${CCACHE_VERSION}/libexec
        if [ -d ${CCACHE_LIBEXEC} ]; then
            export PATH=${CCACHE_LIBEXEC}:${PATH}
        fi
    elif [ -d /usr/lib/ccache ]; then
        export PATH=/usr/lib/ccache:${PATH}
    fi
fi

# zend
if [ -d /usr/local/zend/bin ]; then 
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/zend/lib
    export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/usr/local/zend/oracle/instantclient_10_2
    export TNS_ADMIN=/usr/local/zend/oracle/network/admin
    export NLS_LANG="AMERICAN_AMERICA.UTF8"
    export PATH=/usr/local/zend/bin:/usr/local/zend/mysql/bin:$PATH
fi

# rvm
if [ -f ${HOME}/.rvm/scripts/rvm ]; then
    source ${HOME}/.rvm/scripts/rvm
fi

# add users bin folder to the path, if you have it
if [ -d ${HOME}/.bin ]; then 
    export PATH=${HOME}/.bin:$PATH
fi
if [ -d ${HOME}/bin ]; then 
    export PATH=${HOME}/bin:$PATH
fi

if [ -e ${HOME}/.path.local ]; then
  source ${HOME}/.path.local
fi

#export PATH="~/bin:~/.bin:/usr/local/homebrew/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/git/bin:$PATH"
#export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"
