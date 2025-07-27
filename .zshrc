
# ==========================
# 🧠 Zsh Configuration File
# ==========================

# 📝 History configuration
export HISTFILE=~/.zsh_history  # Where to store history
export HISTSIZE=10000           # Max number of history lines in memory
export SAVEHIST=10000           # Max number of history lines to save

# ⚙️ Shell behavior options
setopt autocd                   # 'cd folder' works without typing 'cd'
setopt correct                  # Auto correct minor mistakes in commands
setopt hist_ignore_dups         # Don't record duplicate commands in history
setopt share_history            # Share history across multiple terminals

# ==========================
# 🔌 Plugin Initialization
# ==========================

# 🧠 Enable tab completion system
autoload -Uz compinit
compinit

# 🎨 Enable prompt customization
autoload -Uz promptinit
promptinit

# 📦 Enable extra completions (zsh-completions plugin)
# Make sure the path is correct; adjust if needed
fpath+=~/.config/zsh/plugins/zsh-completions/src

# 🎯 Syntax Highlighting Plugin
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# 💬 Autosuggestions Plugin
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# ✏️ Autosuggestion style
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'


# ==========================
# 💻 Prompt Configuration
# ==========================
# This is your command prompt appearance
PROMPT='%F{#10f0ff}[%D{%I:%M}]%f %F{green}%n@%m%f %F{blue}%~%f %# '



# ==========================
# 💫 Aliases for convinience
# ==========================
alias ls="exa --icons"
alias c="clear"
alias r="reset; neofetch"
alias e=exit
alias "startxampp"="sudo /opt/lampp/manager-linux-x64.run"
alias kiss=~/videolock.sh
