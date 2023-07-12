export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="steeef"

plugins=(
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()

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
alias his="history | cut -c 8-"
alias rl="omz reload"
alias reload="omz reload"
alias p="python3 "

alias h="cd ~/Desktop"
alias home="cd ~/Desktop"
alias w="cd ~/Desktop/work"
alias work="cd ~/Desktop/work"

alias gp="git push"
alias gpf="git push --force"
alias ga="git add ."
alias gs="git status"
alias gcm="git commit -m "
alias gpoh="git push origin head"

alias gamend="git commit --amend "
alias gamendno="gamend --no-verify --no-edit"
alias ff="ga && gamendno && gp -f"

alias gc="git checkout "
alias grh="git reset --hard"
alias gl="git log"
alias glo="git log --oneline"
alias gls="git log --stat"
alias glg="git log --graph"
alias glc="git log -p "
alias gb="git branch -v"
alias gcb="git checkout -b"
alias gpa="git fetch --all"

alias con="config "
alias cs="config status"
alias cond="config diff"
alias cl="config log -v"
alias ca="config add "
alias ccm="config commit -m "
alias cp="config push origin head"
alias cr="config remote -v"
alias cpf="config push --force"
alias camend="config commit --amend "

alias es="expo start"
alias ea="npm run android"
alias ei="npm run ios"
alias esdc="npx expo start --dev-client"

alias j17='javahome 17.0.6'
alias javaVersions='/usr/libexec/java_home -V'

alias adevices="adb devices"
alias astart="emulator -avd "
alias aemulators="emulator -list-avds"
alias aconnect="adb connect 192.168.0.13:39463"

search() {
    fc -ln 0 | grep $@ | yank -l 
}

newremote() {
    git remote add origin git@github.com:PrimeTimeTran/"$1".git
    git branch -M main
    git push -u origin main
}

javahome() {
    unset JAVA_HOME 
    export JAVA_HOME=$(/usr/libexec/java_home -v "$1");
    java -version
}

export JAVA_HOME=$(/usr/libexec/java_home -v "17.0.6");

config() {
    git --git-dir="$HOME/.cfg" --work-tree="$HOME" "$@"
}

echo "Time flies..."
echo 'Use it wisely...'

## [Completion] 
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/loi/.dart-cli-completion/zsh-config.zsh ]] && . /Users/loi/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]



