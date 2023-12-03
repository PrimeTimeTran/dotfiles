# Setup ZSH
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
source $ZSH/oh-my-zsh.sh
source /opt/homebrew/opt/zinit/zinit.zsh
source /opt/homebrew/share/antigen/antigen.zsh
[[ -f /Users/loi/.dart-cli-completion/zsh-config.zsh ]] && . /Users/loi/.dart-cli-completion/zsh-config.zsh || true
# Setup ZSH

# Source system-wide tools or configurations here
export PATH=/Library/PostgreSQL/15/bin:$PATH
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
export VSToolsPath=/Library/Frameworks/Mono.framework/Versions/Current/lib/mono/xbuild/Microsoft/VisualStudio/v17.0/

# Source user-specific tools or configurations here
source ~/.functions
export EDITOR=nvim
export VISUAL=nvim
export NVM_DIR="$HOME/.nvm"
export BUN_INSTALL="$HOME/.bun"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH=$PATH:$HOME/.maestro/bin
[ -s "/Users/loi/.bun/_bun" ] && source "/Users/loi/.bun/_bun"
# Source user-specific tools or configurations here

# Include any other language managers or related tools here
eval "$(pyenv init -)"
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:$HOME/.pyenv/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
# Include any other language managers or related tools here


# Any other Android/Flutter specific paths can go here
export ANDROID_HOME="/Users/loi/Library/Android/sdk"
export PATH="$ANDROID_HOME/platform-tools:$PATH"
export PATH="$ANDROID_HOME/tools:$PATH"
export PATH="$ANDROID_HOME/tools/bin:$PATH"
export PATH="$ANDROID_HOME/emulator:$PATH"
export PATH=/Users/loi/flutter/bin:$PATH
# Any other Android/Flutter specific paths can go here

if [ -f '/Users/loi/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/loi/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/Users/loi/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/loi/google-cloud-sdk/completion.zsh.inc'; fi
[[ -f /Users/loi/.dart-cli-completion/zsh-config.zsh ]] && . /Users/loi/.dart-cli-completion/zsh-config.zsh || true

# Aliases
# General
alias bp="code ~/.zshrc"
alias c="clear"
alias vs="code ."
alias p="python3 "
alias rl="omz reload"
alias reload="omz reload"
alias his="history | cut -c 8-"
alias g="google "
alias cpd="copydir "
alias home="cd ~/Desktop"
alias w="cd ~/Desktop/work"
alias dls="cd ~/Downloads"
alias work="cd ~/Desktop/work"

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

# Dotfiles
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

# Tmux
# tmux ls 
# prefix + (ctrl+$)

# NPM
alias np='npm publish'
alias nr="npm run"
alias nrd="npm run dev"
alias nrs="npm run start"
alias nrt="npm run test"
alias nra="npm run android"
alias nri="npm run ios"
alias nrg="npm run generate"
alias ni="npm install"

# Yarn
alias yd="yarn dev"
alias ys="yarn start"

# Bun
alias bi="bun install"
alias bd="bun run dev -o"
alias br="bun run"
alias br="bun run"

## Expo
alias es="expo start"
alias esdc="npx expo start --dev-client"
alias esdci="npx expo run:ios "
alias eiarid="npx expo run:ios --scheme 'myAPP - Debug' --configuration 'Debug' --device 00008110-000218C20C0B801E"
alias esdca="npx expo run:android "
alias erdca="npx expo run:android --variant developmentDebug"

# IOS
alias i="ios"
alias ivd="xcrun xctrace list devices"

# Android
alias adl="adb devices"
alias ael="emulator -list-avds"
alias aes="emulator -avd "
alias aesp6="emulator -avd Pixel_6_Pro_API_33"
alias aesp7="emulator -avd Pixel_6_Pro_API_33"
alias ac="adb connect 10.0.0.193:43405"
alias aemulator="adb -s emulator-5554 shell setprop debug.firebase.analytics.app com.adapthealth.myapp.dev"
alias adevice="adb -s adb-0B031FDD4000WF-E42dcm._adb-tls-connect._tcp. shell setprop debug.firebase.analytics.app com.adapthealth.myapp.dev"

# Java
alias jv='java --version'
alias jvl='/usr/libexec/java_home -V'
alias jv17='javahome 17.0.6'
export JAVA_HOME=$(/usr/libexec/java_home -v "20");

# Nuxt
alias nuxi='npx nuxi '

alias nb='netlify build'
alias nfb='netlify functions:build --src netlify/functions'
alias nd='netlify deploy --prod'

echo "Time flies... Use it wisely..."