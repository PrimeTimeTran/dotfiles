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
  flutter zsh-autosuggestions last-working-dir
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

alias sh_file="code ~/.zshrc"
alias sh_aths="code ~/.sh-paths.zsh"
alias sh_crets="code ~/.sh-secrets.zsh"
alias sh_tions="code ~/.sh-functions.zsh"

alias kb="cd ~/KB"
alias blog="cd ~/blog"
alias home="cd ~/Desktop"
alias dls="cd ~/Downloads"
alias docs="cd ~/Documents"

alias pics="cd ~/Pictures"
alias w="cd ~/Documents/work"

alias cfg_skhd="code ~/.config/skhd/skhdrc"
alias cfg_yabai="code ~/.config/yabai/yabairc "
alias cfg_vim="vi ~/.cfg/my_configs.vim"
alias cfg_zed="code ~/.config/zed/keymap.json"

## Android
alias adl="adb devices"
alias ael="emulator -list-avds"
alias aes="emulator -avd "
alias aesp6="emulator -avd Pixel_6_Pro_API_33"
alias ac="adb connect 10.0.0.193:43405"
alias aemulator="adb -s emulator-5554 shell setprop debug.firebase.analytics.app com.adapthealth.myapp.dev"
alias adevice="adb -s adb-0B031FDD4000WF-E42dcm._adb-tls-connect._tcp. shell setprop debug.firebase.analytics.app com.adapthealth.myapp.dev"

# Dotfiles/Bare Repo
alias con="config "
alias cs="config status"
alias cond="config diff"
alias cl="config log -v"
alias ca="config add "
alias caa="config add -u"
alias ccm="config commit -m "

# alias cp="config push origin head"
alias cr="config remote -v"
alias cpf="config push --force"
alias camend="config commit --amend "

## Conda
alias coni="conda info --envs"
alias cond="conda deactivate"
alias cona="conda activate"
alias cons="conda env export > environment.yml"
alias conin="conda install"
alias conexmac="conda env export > environment-macos.yml"
alias concref="conda create -f environment-"

alias carb='cargo b'
alias carc='cargo clean'
alias carf='cargo fix --bin "setup_utility"'
alias carr='cargo run --bin main'

alias db="docker build ."
alias dcu="docker compose up"
alias dr="docker run --platform=linux/amd64"

# Git
alias gl="git log"
alias gl-oneline="git log --oneline"
alias gl-stat="git log --stat"
alias gl-graph="git log --graph"
alias gl-c="git log -p "

alias gb-verbose="git branch -v"
alias gb-oneline="git branch --format='%(refname:short)'"
alias gb-author="git branch --format='%(refname:short)  |  %(authorname)'"
alias gb-last-commit="git branch --format='%(refname:short)  |  %(authorname)'"
alias gb-sorted="git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)  |  %(committerdate:relative)'"
alias gb-sorted-verbose="git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)  |  %(committerdate:iso8601)'"

# alias gb-oneline="git branch --format='%(refname:short)  |  %(committerdate:relative)  |  %(subject)'"

alias gs="git status"
alias gaa="git add ."
alias gat="git add -u"
alias gcm="git commit -m "
alias gpus="git push"
alias gpul="git pull"
alias gpf="git push --force"
alias gpoh="git push origin head"
alias geom="git checkout --ignore-other-worktrees main"

alias gc="git checkout "
alias gcb="git checkout -b "
alias grv="git remote -v"

alias gfa="git fetch --all"
alias grh="git reset --hard"

## Git Amend
alias g-amend="git commit --amend "
alias g-amend_no_verify_no_edit="g_amend --no-verify --no-edit"
alias ff="gaa && g_amend_no_verify_no_edit"
alias ffp="gaa && g_amend_no_verify_no_edit && gpf"
alias fft="gaa && g_amend_no_verify_no_edit"
alias fftp="gat && g_amend_no_verify_no_edit && gp -f"


alias jv='java --version'
alias jv17='javahome 17.0.6'
alias jvl='/usr/libexec/java_home -V'

### NPM
alias np='npm publish'
alias nr="npm run"
alias nrd="npm run dev"
alias nrs="npm run start"
alias nrt="npm run test"
alias nra="npm run android"
alias nri="npm run ios"
alias nrg="npm run generate"
alias ni="npm install"
alias nrb="npm run build"

## Netlify
alias nb='netlify build'
alias nd='netlify deploy --prod'
alias nfb='netlify functions:build --src netlify/functions'


### Bun
alias br="bun run"
alias bi="bun install"
alias brd="bun run dev"

## Expo
alias es="expo start"
alias esdc="npx expo start --dev-client"
alias esdci="npx expo run:ios "
alias eiarid="npx expo run:ios --scheme 'myAPP - Debug' --configuration 'Debug' --device 00008110-000218C20C0B801E"
alias esdca="npx expo run:android "
alias erdca="npx expo run:android --variant developmentDebug"

## IOS
alias simphone="ios"
alias simlist="xcrun xctrace list devices"
alias simpad="xcrun simctl boot 'iPad Pro 13-inch (M4)'"


# Python
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
alias pm="python main.py"

alias k='kubectl'
alias kall='kubectl get all'
alias kpods='kubectl get pods'
alias kpodsdetail='kubectl get pods -o wide'
alias kjobmake='kubectl apply -f k8s/agent-job.yaml'
alias kproxymp='kubectl port-forward svc/marketplace 3000:3000'
alias kstartdashboard='kubectl proxy http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/#/login'
alias kmaketoken='kubectl -n kubernetes-dashboard create token dashboard-admin'

### Yarn
alias yd="yarn dev"
alias ys="yarn start"

# General - Miscellaneous
alias architecture='arch'
alias c="clear"
alias cpd="copydir "
alias his="history | cut -c 8-"
alias die="kill -9"
alias ghost="lsof -i"
alias g="google "
alias pg="postgres"
alias nuxi='npx nuxi '
alias rl="omz reload"
alias tattach='tmux a'
alias vs="code ."

alias systeminfo="uname -m"
alias systemspecs="sw_vers"
alias systeminfo="system_profiler SPHardwareDataType SPSoftwareDataType SPSoftwareDataType"

alias openbb="/Applications/OpenBB\ Terminal/OpenBB\ Terminal"


alias cc='cargo check'
alias ct='RUSTFLAGS="-A warnings" cargo test'
alias c-ir='cargo insta review'


stty -ixon

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

command -v nvm >/dev/null 2>&1 && nvm use default >/dev/null

echo "Time flies... Use it wisely..."
