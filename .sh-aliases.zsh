alias sh-file="code ~/.zshrc"
alias sh-aths="code ~/.sh-paths.zsh"
alias sh-crets="code ~/.sh-secrets.zsh"
alias sh-tions="code ~/.sh-functions.zsh"
alias sh-aliases="code ~/.sh-aliases.zsh"
alias sh-git-aliases="code ~/.sh-aliases-git.zsh"

alias ls-size="find . -maxdepth 1 -type f -name '*.svg' ! -name '.*' -exec ls -lh {} \; | awk '{printf \"%-40s %10s\\n\", \$9, \$5}'"
# ./Asset                                        101B
# ./D.5.Hills.svg                                988B
# ./D.4.Hills.svg                                560B
# ./Asset                                        500B

alias home="cd ~/Desktop"
alias dls="cd ~/Downloads"
alias docs="cd ~/Documents"
alias kb="cd ~/KB"
alias projects="cd ~/KB/project"
alias blog="cd ~/blog"

alias cfg-skhd="code ~/.config/skhd/skhdrc"
alias cfg-yabai="code ~/.config/yabai/yabairc "
alias cfg-vim="vi ~/.cfg/my_configs.vim"
alias cfg-zed="code ~/.config/zed/keymap.json"

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

alias system-info="uname -m"
alias system-specs="sw_vers"
alias system-info="system_profiler SPHardwareDataType SPSoftwareDataType SPSoftwareDataType"

alias open-bb="/Applications/OpenBB\ Terminal/OpenBB\ Terminal"


alias cc='cargo check'
alias ct='RUSTFLAGS="-A warnings" cargo test'
alias c-ir='cargo insta review'

alias p='pnpm '
alias p-u='pnpm update '
alias p-i='pnpm install '
alias p-w='pnpm why '
alias p-l='pnpm list --depth -1 -r'
alias p-r-hmr='pnpm run dev:blog:hmr'
alias p-r-dist='pnpm run dev:blog:dist'
alias p-r-release='pnpm run dev:blog:release'
