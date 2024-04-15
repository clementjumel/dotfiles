# Disable unused variables diagnostics (used by zsh)
# shellcheck disable=SC2034

# [[ General ]]

# Manually set language environment
export LANG=en_US.UTF-8

# Prepend to $PATH
# - the `$HOME/.local` part comes from fd's installation guide
# - the `/usr/local/opt/python` part comes from brew when installing Python
export PATH="$HOME/.local/bin:/usr/local/opt/python/libexec/bin:$PATH"

# Command history settings
# Limit number of entries in memory
HISTSIZE=200000
# Limit number of entries in the history file (should be equal or lower as in memory)
SAVEHIST=100000

# Setup oh-my-zsh
[ -f ~/.config/oh-my-zsh/oh-my-zsh.zsh ] && source ~/.config/oh-my-zsh/oh-my-zsh.zsh

# [[ Key bindings ]]

# Descrease the time out after pressing a key to remove the delay after pressing escape
KEYTIMEOUT=1

# Make <C-p>/<C-n> filter with the terminal entry when browsing the history
bindkey "^P" up-line-or-search
bindkey "^N" down-line-or-search

# Use escape to clear the screen
bindkey "\e" clear-screen

# "^^" & "^_" are actually <C-,> & <C-;> respectively on my keyboard
bindkey "^^" forward-word
bindkey "^_" backward-word

# [[ Additional configuration scripts ]]
# The following will run configuration scripts for additional tools, but only if the files exist

[ -f ~/.config/bat/bat.zsh ] && source ~/.config/bat/bat.zsh
[ -f ~/.config/dust/dust.zsh ] && source ~/.config/dust/dust.zsh
[ -f ~/.config/eza/eza.zsh ] && source ~/.config/eza/eza.zsh
[ -f ~/.config/fzf/fzf.zsh ] && source ~/.config/fzf/fzf.zsh
[ -f ~/.config/ipython/ipython.zsh ] && source ~/.config/ipython/ipython.zsh
[ -f ~/.config/pypoetry/pypoetry.zsh ] && source ~/.config/pypoetry/pypoetry.zsh
[ -f ~/.config/ripgrep/ripgrep.zsh ] && source ~/.config/ripgrep/ripgrep.zsh
[ -f ~/.config/starship/starship.zsh ] && source ~/.config/starship/starship.zsh
[ -f ~/.config/tldr/tldr.zsh ] && source ~/.config/tldr/tldr.zsh
[ -f ~/.config/tmux/tmux.zsh ] && source ~/.config/tmux/tmux.zsh
[ -f ~/.config/zoxide/zoxide.zsh ] && source ~/.config/zoxide/zoxide.zsh
