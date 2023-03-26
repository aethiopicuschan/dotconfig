# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# starship
eval "$(starship init fish)"

# WeZTerm
set -gx PATH /Applications/WezTerm.app/Contents/MacOS $PATH

# coreutils
set -gx PATH /usr/local/opt/coreutils/libexec/gnubin $PATH

# ls
set -gx LSCOLORS "Gxfxcxdxbxegedabagacad"
alias ls='ls -a --color=auto'

# Python
eval "$(pyenv init -)"
set -gx PYTHONDONTWRITEBYTECODE 1

# Node.js
eval "$(nodenv init -)"

# キーバインド
function fish_user_key_bindings
  bind \cr peco_select_history
end
