# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# Resources:
# - [Stack Overflow] How to change color of terminal prompt?
#   https://stackoverflow.com/a/2534676/7368162: 
# - http://www.manpagez.com/man/1/zshmisc/
# Prompt escapes:
# - %n: $USERNAME
# - %m: (full) machine hostname
# - %(n)d: Current directory, n: number of components

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export PATH="$PATH:/Users/personal/Documents/Flutter/bin"
export PATH="$PATH:/Applications/Firefox.app/Contents/MacOS"
export ANDROID_HOME="/Users/personal/Library/Android/sdk"
export PATH="/usr/local/opt/curl/bin:$PATH"
fpath=(~/.zsh $fpath)
autoload -Uz compinit
compinit -u

# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/macos
plugins=macos

## prompt shell #1
autoload -U colors && colors
setopt prompt_subst

COLOR_USER=$'%B%F{green}@%n%f%b'
COLOR_DIR=$'📂 %B%F{blue}%2d%f%b'
COLOR_ARROW=$'%B%F{magenta}➜%f%b'
COLOR_PRIVILEGE=$'%B%F{magenta}%#%f%b'
# COLOR_DELIM_START=$'%B%F{green}[%f%b'
# COLOR_DELIM_CLOSE=$'%B%F{green}]%f%b'
# COLOR_DATE=$'%B%F{magenta}%W:%@%f%b'
# COLOR_FULL_DATE=${COLOR_DELIM_START}${COLOR_DATE}${COLOR_DELIM_CLOSE}
PS1="${COLOR_USER} ${COLOR_ARROW} ${COLOR_DIR} ${COLOR_PRIVILEGE} "

# Wasmer
export WASMER_DIR="/Users/personal/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"
alias python="python3"
export PATH="/usr/local/sbin:$PATH"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
