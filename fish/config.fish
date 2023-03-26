# homebrew
/opt/homebrew/bin/brew shellenv | source

# starship
starship init fish | source

# WeZTerm
set -gx PATH /Applications/WezTerm.app/Contents/MacOS $PATH

# coreutils
set -gx PATH /usr/local/opt/coreutils/libexec/gnubin $PATH

# ls
set -gx LSCOLORS "Gxfxcxdxbxegedabagacad"
alias ls='ls -a --color=auto'

# Python
set -gx PYENV_ROOT $HOME/.pyenv
set -gx PATH $PYENV_ROOT/shims $PATH
set -gx PATH $HOME/.local/bin $PATH
set -gx PYTHONDONTWRITEBYTECODE 1

# Node.js
set -gx PATH $HOME/.nodebrew/current/bin $PATH
