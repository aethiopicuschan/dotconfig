# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# starship
eval "$(starship init fish)"

# WeZTerm
set -gx PATH /Applications/WezTerm.app/Contents/MacOS $PATH

# GNU系ツール
set -gx PATH /opt/homebrew/opt/coreutils/libexec/gnubin $PATH
set -gx PATH /opt/homebrew/opt/grep/libexec/gnubin $PATH
set -gx PATH /opt/homebrew/opt/gnu-sed/libexec/gnubin $PATH
set -gx GPG_TTY $(tty)

# ls
set -gx LSCOLORS "Gxfxcxdxbxegedabagacad"
alias ls='ls -a --color=auto'

# Python
set -gx PYTHONDONTWRITEBYTECODE 1
# rye
set -gx PATH $HOME/.rye/shims $PATH

# Node.js
set -gx PNPM_HOME "/Users/aethiopicuschan/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end

# Rust
set -gx PATH $HOME/.cargo/bin $PATH

# キーバインド
function fish_user_key_bindings
  bind \cr peco_select_history
end
