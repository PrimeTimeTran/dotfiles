# Setup ZSH
source ~/.paths.zsh
source ~/.secrets.zsh
source ~/.functions.zsh
source $ZSH/oh-my-zsh.sh
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

alias bp="code ~/.zshrc"
alias bpath="code ~/Users/future/.paths.zsh"
alias secrets="code ~/Users/future/.secrets.zsh"

alias dcu="docker compose up"
alias db="docker build ."
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
alias cp="config push origin head"
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
alias i="ios"
alias ivd="xcrun xctrace list devices"

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
alias vimconfig="vi ~/.cfg/my_configs.vim"
# alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport"

alias coni="conda info --envs"
alias cond="conda deactivate"
alias cona="conda activate"
alias cons="conda env export > environment.yml"
alias conin="conda install"
alias conexmac="conda env export > environment-macos.yml"
alias concref="conda create -f environment-"

alias pm="python main.py"

alias systemspecs="sw_vers"
alias systeminfo="system_profiler SPHardwareDataType SPSoftwareDataType SPSoftwareDataType"

echo "Time flies... Use it wisely..."
