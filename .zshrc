# #############################################
# 0. Tool for bash loading metrics
# ─────────────────────────────────────────────
# zmodload zsh/zprof

# #############################################
# 1. ENVIRONMENT VARIABLES
# ─────────────────────────────────────────────
## [-f ~/.zsh-env.zsh]: Compact shell conditional.
## [...]: Test
## -f: "Does this path exist and is it a regular file?"
# ─────────────────────────────────────────────
[ -f ~/.zsh-env.zsh ] && source ~/.zsh-env.zsh

# -d path     # directory exists
# -e path     # anything exists
# -r path     # readable
# -w path     # writable
# -x path     # executable

# #############################################
# 2. PATH LOADING (Externalized)
# ─────────────────────────────────────────────
[ -f ~/.zsh-path.zsh ] && source ~/.zsh-path.zsh

# #############################################
# 3. OH-MY-ZSH & PLUGINS
# ─────────────────────────────────────────────

# plugins=(history git flutter last-working-dir colored-man-pages alias-tips web-search  jsontools macos ls cd-ls)
plugins=(zsh-autosuggestions cd-ls alias-tips)
# plugins=(git flutter zsh-autosuggestions last-working-dir colored-man-pages alias-tips web-search history jsontools macos ls cd-ls)
# Applies custom theme
source "$ZSH/custom/themes/primetimetran.zsh-theme"
source "$ZSH/oh-my-zsh.sh"

load_nvm() {
  unset -f load_nvm node npm npx yarn

  [ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
  nvm use default >/dev/null
}

node() {
  load_nvm
  command node "$@"
}

npm() {
  load_nvm
  command npm "$@"
}

npx() {
  load_nvm
  command npx "$@"
}

yarn() {
  load_nvm
  command yarn "$@"
}

eval "$(pyenv init -)"

# Vite+
[ -f "$HOME/.vite-plus/env" ] && . "$HOME/.vite-plus/env"

# #############################################
# 5. USER SCRIPTS & aliases
# ─────────────────────────────────────────────
[ -f ~/.zsh-secret.zsh ] && source ~/.zsh-secret.zsh
[ -f ~/.zsh-function.zsh ] && source ~/.zsh-function.zsh
[ -f ~/.zsh-alias.zsh ] && source ~/.zsh-alias.zsh
[ -f ~/.zsh-alias-git.zsh ] && source ~/.zsh-alias-git.zsh
[ -f ~/.zsh-completion.zsh ] && source ~/.zsh-completion.zsh

echo "5. ⌛️ Time flies..."

# #############################################
# 0. Used with start of this file.
# ─────────────────────────────────────────────
# zprof
