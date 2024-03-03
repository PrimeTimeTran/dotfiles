# Setup ZSH
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
source ~/.functions

source $ZSH/oh-my-zsh.sh
[[ -f /Users/future/.dart-cli-completion/zsh-config.zsh ]] && . /Users/future/.dart-cli-completion/zsh-config.zsh || true

# System-wide tools or configs here
export EDITOR="code -w"
export PATH=/Library/PostgreSQL/15/bin:$PATH
export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
export VSToolsPath=/Library/Frameworks/Mono.framework/Versions/Current/lib/mono/xbuild/Microsoft/VisualStudio/v17.0/

# User-specific tools or configs here
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "/Users/future/.bun/_bun" ] && source "/Users/future/.bun/_bun"

# Python
eval "$(pyenv init -)"
export PATH="$PATH:$HOME/.pyenv/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"

# Android
export ANDROID_HOME="/Users/loi/Library/Android/sdk"
export PATH="$ANDROID_HOME/platform-tools:$PATH"
export PATH="$ANDROID_HOME/tools:$PATH"
export PATH="$ANDROID_HOME/tools/bin:$PATH"
export PATH="$ANDROID_HOME/emulator:$PATH"

# Flutter
export PATH=/Users/loi/flutter/bin:$PATH
# VSCode
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
# Infosec
export PATH="/usr/local/opt/openssl/bin:$PATH"

# Metasploit
PATH=$PATH:/opt/metasploit-framework/binexport
PATH=$PATH:/opt/metasploit-framework/bin

# GCP
if [ -f '/Users/future/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/future/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/Users/future/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/future/google-cloud-sdk/completion.zsh.inc'; fi

# General - Miscellanous
alias c="clear"
alias vs="code ."
alias g="google "
alias p="python3 "
alias cpd="copydir "
alias rl="omz reload"
alias nuxi='npx nuxi '
alias bp="code ~/.zshrc"
alias home="cd ~/Desktop"
alias dls="cd ~/Downloads"
alias w="cd ~/Documents/work"
alias his="history | cut -c 8-"
alias vimconfig="vi ~/.cfg/my_configs.vim"

alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport"

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
## NPM
alias np='npm publish'
alias nr="npm run"
alias nrd="npm run dev"
alias nrs="npm run start"
alias nrt="npm run test"
alias nra="npm run android"
alias nri="npm run ios"
alias nrg="npm run generate"
alias ni="npm install"
## Yarn
alias yd="yarn dev"
alias ys="yarn start"
## Bun
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

## Java
alias jv='java --version'
alias jv17='javahome 17.0.6'
alias jvl='/usr/libexec/java_home -V'
export JAVA_HOME=$(/usr/libexec/java_home -v "20");

## Netlify
alias nb='netlify build'
alias nd='netlify deploy --prod'
alias nfb='netlify functions:build --src netlify/functions'

echo "Time flies... Use it wisely..."

