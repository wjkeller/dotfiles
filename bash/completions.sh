for i in ~/.bash/completion_scripts/*.sh ; do
    if [ -r "$i" ]; then
        if [ "$PS1" ]; then
            . $i
        else
            . $i >/dev/null 2>&1
        fi
    fi
done

complete -C ~/.bash/completion_scripts/rake_completion.rb -o default rake
complete -C ~/.bash/completion_scripts/project_completion.rb -o default c
complete -C ~/.bash/completion_scripts/capistrano_completion.rb -o default cap

