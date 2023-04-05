# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# starship
eval "$(starship init fish)"

# WeZTerm
set -gx PATH /Applications/WezTerm.app/Contents/MacOS $PATH

# GNU系ツール
set -gx PATH /opt/homebrew/opt/coreutils/libexec/gnubin $PATH
set -gx PATH /opt/homebrew/opt/grep/libexec/gnubin $PATH
set -gx GPG_TTY $(tty)

# ls
set -gx LSCOLORS "Gxfxcxdxbxegedabagacad"
alias ls='ls -a --color=auto'

# Python
eval "$(pyenv init -)"
set -gx PYTHONDONTWRITEBYTECODE 1
# poetry
set -gx PATH $HOME/.local/bin $PATH

# Node.js
eval "$(nodenv init -)"

# Rust
set -gx PATH $HOME/.cargo/bin $PATH

# キーバインド
function fish_user_key_bindings
  bind \cr peco_select_history
end
