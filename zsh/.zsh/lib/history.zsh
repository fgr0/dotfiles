#
# History
#

HISTFILE="${ZDOTDIR:-$HOME}/.zhistory"
HISTSIZE=10000
SAVEHIST=10000

setopt extended_history         # Write timestamps
setopt inc_append_history       # Write to the history file immediately
setopt share_history            # Share history between all sessions

setopt hist_ignore_dups         # Ignore duplicates of the previous event
setopt hist_expire_dups_first   # Expire duplicates from history file first
setopt hist_verify              # Verify history expansions before executing
setopt hist_beep                # BOOP

alias history-stat="history 0 | awk '{print \$2}' | sort | uniq -c | sort -n -r | head"