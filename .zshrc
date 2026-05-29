# ─────────────────────────────────────────────
# 1. SYSTEM SAFETY PATH (NEVER REMOVE THIS)
# ─────────────────────────────────────────────
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

# ─────────────────────────────────────────────
# 2. PYENV (early, stable)
# ─────────────────────────────────────────────
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# ─────────────────────────────────────────────
# 3. OH-MY-ZSH CORE
# ─────────────────────────────────────────────
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="primetimetran"
ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}

plugins=(
  git flutter zsh-autosuggestions last-working-dir
  colored-man-pages alias-tips web-search history
  jsontools macos ls cd-ls
)

source $ZSH/oh-my-zsh.sh

# ─────────────────────────────────────────────
# 4. SAFE USER ENV FILES
# (these MUST NOT overwrite PATH fully)
# ─────────────────────────────────────────────
[ -f ~/.sh-paths.zsh ] && source ~/.sh-paths.zsh
[ -f ~/.sh-functions.zsh ] && source ~/.sh-functions.zsh
[ -f ~/.sh-secrets.zsh ] && source ~/.sh-secrets.zsh

# ─────────────────────────────────────────────
# 5. NODE (NVM SAFE BLOCK)
# ─────────────────────────────────────────────
export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

# only run if available
command -v nvm >/dev/null 2>&1 && nvm use default >/dev/null

# ─────────────────────────────────────────────
# 6. MISC ENV
# ─────────────────────────────────────────────
export EDITOR="code -w"

stty -ixon

# Python
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

stty -ixon

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

command -v nvm >/dev/null 2>&1 && nvm use default >/dev/null


# ─────────────────────────────────────────────
# 7. ALIASES
# ─────────────────────────────────────────────
[ -f ~/.sh-aliases.zsh ] && source ~/.sh-aliases.zsh
[ -f ~/.sh-aliases-git.zsh ] && source ~/.sh-aliases-git.zsh


echo "Time flies... Use it wisely..."

# pnpm
export PNPM_HOME="/Users/future/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
# pnpm end


export PATH="/Applications/Inkscape.app/Contents/MacOS:$PATH"
