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
)

source /opt/homebrew/share/antigen/antigen.zsh
source /opt/homebrew/opt/zinit/zinit.zsh
source $ZSH/oh-my-zsh.sh

source ~/.functions

export JAVA_HOME=$(/usr/libexec/java_home -v "17.0.6");

[[ -f /Users/loi/.dart-cli-completion/zsh-config.zsh ]] && . /Users/loi/.dart-cli-completion/zsh-config.zsh || true

export EDITOR=nvim
export VISUAL=nvim
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin"
export VSToolsPath=/Library/Frameworks/Mono.framework/Versions/Current/lib/mono/xbuild/Microsoft/VisualStudio/v17.0/
export PATH="$PATH:/Users/loi/flutter/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"

ANDROID_HOME=/Users/loi/Library/Android/sdk
PATH=$ANDROID_HOME/platform-tools:$PATH
PATH=$ANDROID_HOME/tools:$PATH
PATH=$ANDROID_HOME/tools/bin:$PATH
PATH=$ANDROID_HOME/emulator:$PATH

alias bp="code ~/.zshrc"

alias c="clear"
alias vs="code ."
alias p="python3 "
alias rl="omz reload"
alias reload="omz reload"
alias his="history | cut -c 8-"

alias h="cd ~/Desktop"
alias home="cd ~/Desktop"
alias w="cd ~/Desktop/work"
alias work="cd ~/Desktop/work"
alias work="cd ~/Desktop/work/rse"

alias gl="git log"
alias glo="git log --oneline"
alias gls="git log --stat"
alias glg="git log --graph"
alias glc="git log -p "
alias gs="git status"
alias gaa="git add ."
alias gat="git add -u"
alias gcm="git commit -m "
alias gp="git push"
alias gpf="git push --force"
alias gpoh="git push origin head"

alias gc="git checkout "
alias gcb="git checkout -b "
alias grv="git remote -v"
alias gb="git branch -v"
alias gfa="git fetch --all"
alias grh="git reset --hard"

alias gamend="git commit --amend "
alias gamendno="gamend --no-verify --no-edit"
alias ff="ga && gamendno"
alias ffp="ga && gamendno && gp -f"

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

alias es="expo start"
alias ea="npm run android"
alias ei="npm run ios"
alias esdc="npx expo start --dev-client"
alias esdci="npx expo run:ios "
alias erdci="npx expo run:ios --scheme 'myAPP - Debug' --configuration 'Debug'"
alias esdca="npx expo run:android "
alias erdca="npx expo run:android --variant developmentDebug"

alias jv='java --version'
alias jvl='/usr/libexec/java_home -V'
alias jv17='javahome 17.0.6'

alias adl="adb devices"
alias ael="emulator -list-avds"
alias aes="emulator -avd "
alias aesp="emulator -avd Pixel_6_Pro_API_33"
alias ac="adb connect 192.168.0.13:39463"
alias aemulator="adb -s emulator-5554 shell setprop debug.firebase.analytics.app com.adapthealth.myapp.dev"
alias adevice="adb -s adb-0B031FDD4000WF-E42dcm._adb-tls-connect._tcp. shell setprop debug.firebase.analytics.app com.adapthealth.myapp.dev"

echo "Time flies..."
echo 'Use it wisely...'
