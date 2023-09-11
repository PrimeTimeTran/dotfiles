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

source ~/.functions
source $ZSH/oh-my-zsh.sh
source /opt/homebrew/opt/zinit/zinit.zsh
source /opt/homebrew/share/antigen/antigen.zsh

[[ -f /Users/loi/.dart-cli-completion/zsh-config.zsh ]] && . /Users/loi/.dart-cli-completion/zsh-config.zsh || true

export EDITOR=nvim
export VISUAL=nvim
export VOLTA_HOME="$HOME/.volta"
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="$PATH:/Users/loi/flutter/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
export VSToolsPath=/Library/Frameworks/Mono.framework/Versions/Current/lib/mono/xbuild/Microsoft/VisualStudio/v17.0/

export ANDROID_HOME=/Users/loi/Library/Android/sdk
PATH=$ANDROID_HOME/platform-tools:$PATH
PATH=$ANDROID_HOME/tools:$PATH
PATH=$ANDROID_HOME/tools/bin:$PATH
PATH=$ANDROID_HOME/emulator:$PATH

export JAVA_HOME=$(/usr/libexec/java_home -v "20");

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
alias home="d ~/Desktop"
alias w="cd ~/Desktop/work"
alias work="cd ~/Desktop/work"
alias dls="cd ~/Downloads"
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

alias ni="npm install"

alias es="expo start"
alias ea="npm run android"
alias ei="npm run ios"
alias esdc="npx expo start --dev-client"
alias esdci="npx expo run:ios "
alias erdci="npx expo run:ios --scheme 'myAPP - Debug' --configuration 'Debug'"
alias eiarid="npx expo run:ios --scheme 'myAPP - Debug' --configuration 'Debug' --device 00008110-000218C20C0B801E"
alias esdca="npx expo run:android "
alias erdca="npx expo run:android --variant developmentDebug"

alias i="ios"
alias ivd="xcrun xctrace list devices"

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

# Tmux
# tmux ls 
# prefix + (ctrl+$)

# One Long
alias o="cd ~/Desktop/work/onelong"
alias oc="cd ~/Desktop/work/onelong/code"
alias oapi="cd ~/Desktop/work/onelong/code/api"
alias oadmin="cd ~/Desktop/work/onelong/code/admin"
alias oclient="cd ~/Desktop/work/onelong/code/client"

echo "Time flies..."
echo 'Use it wisely...'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/loi/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/loi/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/loi/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/loi/google-cloud-sdk/completion.zsh.inc'; fi


# bun completions
[ -s "/Users/loi/.bun/_bun" ] && source "/Users/loi/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
