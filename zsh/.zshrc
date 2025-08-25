# zsh config
## Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

## See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
zstyle ':omz:update' mode auto
DISABLE_AUTO_TITLE="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh

## activate zsh-syntax-highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Hide device name
# Local binaries
export DEFAULT_USER=$USER
export PATH="$PATH:$HOME/.local/bin"

# initialize zoxide
eval "$(zoxide init zsh)"

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# Deno
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# nvm (node version manager)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# don't generate .lesshst file
# https://stackoverflow.com/a/66097963/7368162
export LESSHISTFILE=-

# Running Brew with Apple Silicon chip
alias brew="arch -arm64 brew $@"
alias ghost="ghostty $@"

# replace some core commands with custom rust replacements
# bat: https://github.com/sharkdp/bat
# lla: https://github.com/chaqchase/lla
alias cat="bat"
alias ls="lla"

function updatetools() {
	brew upgrade
	rustup update
	nvm install node && nvm use node
	cargo install-update -a
}
