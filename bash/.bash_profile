# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/bash_profile.pre.bash" ]] && builtin source "$HOME/.fig/shell/bash_profile.pre.bash"
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
source ~/.bashrc
export CLICOLOR=1

export DENO_INSTALL="/home/$USER/.local"
export PATH="$DENO_INSTALL/bin:$PATH"

. "$HOME/.cargo/env"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/bash_profile.post.bash" ]] && builtin source "$HOME/.fig/shell/bash_profile.post.bash"
