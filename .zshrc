export ZSH="$HOME/.oh-my-zsh"

plugins=(
    git
    flutter
    zsh-autosuggestions
    last-working-dir
    colored-man-pages
    alias-tips
    web-search
    history
    jsontools
    macos
    ls
    cd-ls
)

ZSH_THEME="primetimetran"
ZSH_FAST_ALIAS_TIPS_PREFIX="🚀"
ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}

source $ZSH/oh-my-zsh.sh
source ~/.secrets.zsh
source ~/.functions.zsh

alias bpro="code ~/.zshrc"
alias zp="code ~/.zshrc"
alias bp="code ~/.zshrc"
alias bcrets="code ~/.secrets.zsh"
alias bfun="code ~/.functions.zsh"

alias bcut="code ~/.config/skhd/skhdrc"
alias ycut="code ~/.config/yabai/yabairc "
alias zcut="code ~/.config/zed/keymap.json"
alias vimconfig="vi ~/.cfg/my_configs.vim"

alias bpath="code ~/.paths.zsh"

alias hs="zed ~/.hammerspoon/init.lua"

alias db="docker build ."
alias dcu="docker compose up"
alias dr="docker run --platform=linux/amd64"

alias pg="postgres"

# Git
alias gl="git log"
alias glo="git log --oneline"
alias gls="git log --stat"
alias glg="git log --graph"
alias glc="git log -p "
alias gs="git status"
alias gaa="git add ."
alias gat="git add -u"
alias gcm="git commit -m "
alias gpus="git push"
alias gpul="git pull"
alias gpf="git push --force"
alias gpoh="git push origin head"
alias gcom="git checkout --ignore-other-worktrees main"

alias gc="git checkout "
alias gcb="git checkout -b "
alias grv="git remote -v"
alias gb="git branch -v"
alias gfa="git fetch --all"
alias grh="git reset --hard"

## Git Ammend
alias gamend="git commit --amend "
alias gamendno="gamend --no-verify --no-edit"
alias ff="gaa && gamendno"
alias ffp="gaa && gamendno && gpf"
alias fft="gaa && gamendno"
alias fftp="gat && gamendno && gp -f"

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

# Package Managers
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

alias jv='java --version'
alias jv17='javahome 17.0.6'
alias jvl='/usr/libexec/java_home -V'

### Yarn
alias yd="yarn dev"
alias ys="yarn start"

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

## Android
alias adl="adb devices"
alias ael="emulator -list-avds"
alias aes="emulator -avd "
alias aesp6="emulator -avd Pixel_6_Pro_API_33"
alias ac="adb connect 10.0.0.193:43405"
alias aemulator="adb -s emulator-5554 shell setprop debug.firebase.analytics.app com.adapthealth.myapp.dev"
alias adevice="adb -s adb-0B031FDD4000WF-E42dcm._adb-tls-connect._tcp. shell setprop debug.firebase.analytics.app com.adapthealth.myapp.dev"

## Netlify
alias nb='netlify build'
alias nd='netlify deploy --prod'
alias nfb='netlify functions:build --src netlify/functions'

# General - Miscellanous
alias c="clear"
alias vs="code ."
alias g="google "

alias cpd="copydir "
alias rl="omz reload"
alias nuxi='npx nuxi '

alias home="cd ~/Desktop"
alias dls="cd ~/Downloads"
alias w="cd ~/Documents/work"
alias docs="cd ~/Documents"
alias pics="cd ~/Pictures"
alias his="history | cut -c 8-"

alias coni="conda info --envs"
alias cond="conda deactivate"
alias cona="conda activate"
alias cons="conda env export > environment.yml"
alias conin="conda install"
alias conexmac="conda env export > environment-macos.yml"
alias concref="conda create -f environment-"

alias pm="python main.py"
alias psetup="python /Users/future/Documents/Work/_Main/CS/'Software Engineering'/Scripts/setup.py"
# alias rsetup="cargo /Users/future/Documents/Work/_Main/CS/'Software Engineering'/Scripts/setup.rs"

alias architecture='arch'
alias systeminfo="uname -m"
alias systemspecs="sw_vers"
alias systeminfo="system_profiler SPHardwareDataType SPSoftwareDataType SPSoftwareDataType"

alias carb='cargo b'
alias carc='cargo clean'
alias carf='cargo fix --bin "setup_utility"'
alias carr='cargo run --bin main'

alias yb='yabai -m config --space $(yabai -m query --spaces --space | jq -r .index) layout $(yabai -m query --spaces --space | jq -r '\''if .type|contains("float") then "bsp" else "float" end'\'') && yabai --restart-service'
alias yrs="yabai --restart-service && echo 'Restarted Yabai'"
alias srs="skhd --restart-service && echo 'Restarted SKHD'"

alias openbb="/Applications/OpenBB\ Terminal/OpenBB\ Terminal"

alias ghost="lsof -i"
alias die="kill -9"

echo "Time flies... Use it wisely..."

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Flutter
export PATH="/opt/homebrew/bin:$PATH"

# Python
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

. "$HOME/.local/bin/env"
. "/Users/future/.deno/env"

# Attach tmux to previous session
alias tattach='tmux a'

alias k='kubectl'

# Inject host 3000 to cluster 3000
alias kproxymp='kubectl port-forward svc/marketplace 3000:3000'

# Make a token for K8s dashboard
alias kstartdashboard='kubectl proxy http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/#/login'

# Make a token for K8s dashboard
alias kmaketoken='kubectl -n kubernetes-dashboard create token dashboard-admin'

# Show pods of cluster
alias kall='kubectl get all'
alias kpods='kubectl get pods'
alias kpodsdetail='kubectl get pods -o wide'

alias kjobmake='kubectl apply -f k8s/agent-job.yaml'


export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"


stty -ixon
