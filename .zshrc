export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="steeef"
ZSH_FAST_ALIAS_TIPS_PREFIX="🚀"
ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}

plugins=(
    git
    flutter
    zsh-autosuggestions
    cd-ls
    last-working-dir 
    colored-man-pages
    alias-tips
    web-search
    history
    jsontools
    macos
)

source ~/.paths
source ~/.functions
source $ZSH/oh-my-zsh.sh
source /opt/homebrew/opt/zinit/zinit.zsh
source /opt/homebrew/share/antigen/antigen.zsh

[[ -f /Users/loi/.dart-cli-completion/zsh-config.zsh ]] && . /Users/loi/.dart-cli-completion/zsh-config.zsh || true

export EDITOR=nvim
export VISUAL=nvim

alias bp="code ~/.zshrc"
alias c="clear"
alias vs="code ."
alias p="python3 "
alias rl="omz reload"
alias reload="omz reload"
alias his="history | cut -c 8-"
alias g="google "
alias cpd="copydir "

# alias h="cd ~/Desktop"
alias home="cd ~/Desktop"
alias w="cd ~/Desktop/work"
alias dls="cd ~/Downloads"
alias work="cd ~/Desktop/work"
alias ol="cd ~/Desktop/onelong"

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

alias i="ios"
alias ivd="xcrun xctrace list devices"

# Java

alias jv='java --version'
alias jvl='/usr/libexec/java_home -V'
alias jv17='javahome 17.0.6'

# Tmux
# tmux ls 
# prefix + (ctrl+$)

# NPM
alias nr="npm run"
alias ni="npm install"
alias nd="npm run dev"
alias ns="npm run start"
alias nrt="npm run test"
alias ea="npm run android"
alias ei="npm run ios"

# Yarn
alias yd="yarn dev"
alias ys="yarn start"

# Bun
alias bd="bun dev"

## Expo
alias es="expo start"
alias esdc="npx expo start --dev-client"
alias esdci="npx expo run:ios "
alias erdci="npx expo run:ios --scheme 'myAPP - Debug' --configuration 'Debug'"
alias eiarid="npx expo run:ios --scheme 'myAPP - Debug' --configuration 'Debug' --device 00008110-000218C20C0B801E"
alias esdca="npx expo run:android "
alias erdca="npx expo run:android --variant developmentDebug"

# Android
alias adl="adb devices"
alias ael="emulator -list-avds"
alias aes="emulator -avd "
alias aesp6="emulator -avd Pixel_6_Pro_API_33"
alias aesp7="emulator -avd Pixel_6_Pro_API_33"
alias ac="adb connect 192.168.0.13:39463"
alias aemulator="adb -s emulator-5554 shell setprop debug.firebase.analytics.app com.adapthealth.myapp.dev"
alias adevice="adb -s adb-0B031FDD4000WF-E42dcm._adb-tls-connect._tcp. shell setprop debug.firebase.analytics.app com.adapthealth.myapp.dev"

echo "Time flies..."
echo 'Use it wisely...'
