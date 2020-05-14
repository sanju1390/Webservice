#!/bin/sh

function shell_env_setup {
        echo "Configuring shell env"
        export LANG="en_US.UTF-8"
        export LC_ALL="en_US.UTF-8"
        export PATH="$HOME/.rbenv/bin:$PATH"
        eval "$(rbenv init - zsh)"
        rbenv shell 2.5.0
}

## call function.
shell_env_setup