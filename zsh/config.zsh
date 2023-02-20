export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

fpath=($XDG_CONFIG_HOME/zsh/functions $fpath)

autoload -U $XDG_CONFIG_HOME/zsh/functions/*(:t)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt NO_BG_NICE # Don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # Allow functions to have local options
setopt LOCAL_TRAPS # Allow functions to have local traps
setopt HIST_VERIFY
setopt SHARE_HISTORY # Share history between sessions ???
setopt EXTENDED_HISTORY # Add timestamps to history
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF

setopt APPEND_HISTORY # Adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # Adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # Don't record dupes in history
setopt HIST_REDUCE_BLANKS

# Don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
setopt complete_aliases

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^?' backward-delete-char