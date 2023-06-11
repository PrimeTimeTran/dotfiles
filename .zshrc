export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="dst"

plugins=(
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export EDITOR=nvim
export VISUAL=nvim

ANDROID_HOME=/Users/loi/Library/Android/sdk
PATH=$ANDROID_HOME/platform-tools:$PATH
PATH=$ANDROID_HOME/tools:$PATH
PATH=$ANDROID_HOME/tools/bin:$PATH
PATH=$ANDROID_HOME/emulator:$PATH

export PATH="$PATH:/Users/loi/flutter/bin"

alias c="clear"
alias vs="code ."
alias bp="code ~/.zshrc"
alias his="history"

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
alias gc="git checkout "
alias grh="git reset --hard"
alias gl="git log"
alias glo="git log --oneline"
alias gls="git log --stat"
alias glg="git log --graph"
alias glc="git log -p "

alias es="expo start"
alias ea="npm run android"
alias ei="npm run ios"

alias p="python3 "
alias reload="omz reload"

alias adevices="adb devices"
alias aemulators="emulator -list-avds"
alias astart="emulator -avd "

search() {
    fc -ln 0 | grep $@ | yank -l 
}

newremote() {
    #do things with parameters like $1 such as
    git remote add origin git@github.com:PrimeTimeTran/"$1".git
    git branch -M main
    git push -u origin main
}

javahome() {
  unset JAVA_HOME 
  export JAVA_HOME=$(/usr/libexec/java_home -v "$1");
  java -version
}

alias j17='javahome 17.0.6'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export VSToolsPath=/Library/Frameworks/Mono.framework/Versions/Current/lib/mono/xbuild/Microsoft/VisualStudio/v17.0/  

echo "Time flies..."
echo 'Use it wisely...'