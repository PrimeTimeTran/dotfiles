# ZSH Behavior
## Git branch 
alias gitprompt-on='export SHOW_GIT_PROMPT=1 && rl'
alias gitprompt-off='export SHOW_GIT_PROMPT=0 && rl'

alias toggle-git-prompt='export SHOW_GIT_PROMPT=$((SHOW_GIT_PROMPT ^ 1)) && rl'

## Path
alias path-full='export PROMPT_PATH="%~"'
alias path-short='export PROMPT_PATH="%1~"'
alias path-medium='export PROMPT_PATH="%2~"'

export PROMPT_PATH="%1~"

# ZSH Configuration files
alias zsh-file="zed ~/.zshrc"
alias zsh-env="zed ~/.zsh-env.zsh"
alias zsh-path="zed ~/.zsh-path.zsh"
alias zsh-secret="zed ~/.zsh-secret.zsh"
alias zsh-function="zed ~/.zsh-function.zsh"
alias zsh-alias="zed ~/.zsh-alias.zsh"
alias zsh-alias-git="zed ~/.zsh-alias-git.zsh"
alias zsh-completion="zed ~/.zsh-completion.zsh"

# Dirs
alias mv-kb="cd ~/KB"
alias mv-blog="cd ~/blog"
alias mv-home="cd ~/Desktop"
alias mv-dls="cd ~/Downloads"
alias mv-docs="cd ~/Documents"
alias mv-kb-project="cd ~/KB/project"
alias mv-kb-project-app="cd ~/KB/project/app"

# HTOP
# - CPU usage
# - Memory usage
# - Load averages
# - Process list
# - Uptime
alias system-profiler='htop'

alias cfg-vim="vi ~/.cfg/my_configs.vim"
alias cfg-skhd="zed ~/.config/skhd/skhdrc"
alias cfg-zed="zed ~/.config/zed/keymap.json"
alias cfg-yabai="zed ~/.config/yabai/yabairc "
alias cfg-zsh-theme="zed ~/.oh-my-zsh/custom/themes/primetimetran.zsh-theme"

## Android
alias adl="adb devices"
alias ael="emulator -list-avds"
alias aes="emulator -avd "
alias aesp6="emulator -avd Pixel_6_Pro_API_33"
alias ac="adb connect 10.0.0.193:43405"
alias aemulator="adb -s emulator-5554 shell setprop debug.firebase.analytics.app com.adapthealth.myapp.dev"
alias adevice="adb -s adb-0B031FDD4000WF-E42dcm._adb-tls-connect._tcp. shell setprop debug.firebase.analytics.app com.adapthealth.myapp.dev"

# #############################################
# Dotfiles/Bare Repo
# ─────────────────────────────────────────────
dotrepo() {
    git --git-dir="$HOME/.cfg" --work-tree="$HOME" "$@"
}

alias dr="dotrepo "
alias dr-amend="dr commit --amend "
alias dr-d="dr diff"
alias dr-l="dr log -v"
alias dr-p="dr push"
alias dr-pf="dr push --force"
alias dr-r="dr remote -v"

dr-a() {
    dr add "$@"
}
# dotrepo add -u .
dr-au() {
    # -u (--update) → only update files Git already tracks
    # . → start from the current work tree location ($HOME in your dotfiles setup)
    dr add -u "$@"
}
alias dr-aa="dotrepo add -u"

dr-s() {
    dr status "$@"
}

dr-c() {
    dr commit "$@"
}
dr-cm() {
    dr commit -m "$@"
}

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

alias dkr-b="docker build ."
alias dkr-cu="docker compose up"
alias dkr-r="docker run --platform=linux/amd64"

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

### Yarn
alias yd="yarn dev"
alias ys="yarn start"

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


# General - Miscellaneous
alias architecture='arch'
alias cl="clear"
alias c="clear"

alias cpd="copydir "
alias die="kill -9"
alias ghost="lsof -i"
alias g="google "
alias pg="postgres"
alias nuxi='npx nuxi '
alias rl='source ~/.zshrc'
alias reload='source ~/.zshrc'
alias tattach='tmux a'
alias vs="zed ."
alias z="zed ."

alias his="history | cut -c 8-"
alias ls1="ls -1"
alias system-info="uname -m"
alias system-specs="sw_vers"
# alias system-info="system_profiler SPHardwareDataType SPSoftwareDataType SPSoftwareDataType"

alias open-bb="/Applications/OpenBB\ Terminal/OpenBB\ Terminal"

alias p='pnpm '
alias pw='p why '
alias pi='p install '
alias pu='p update '
alias pr='p run '

alias pl='p list --depth -1 -r'

alias pf='p --filter '
alias pr-hmr='pr dev:blog:hmr'
alias pr-dist='pr dev:blog:dist'
alias pr-release='pr dev:blog:release'

alias cg='cargo '
alias cg-r='cg run '
alias cg-ck='cg check '

alias cg-t='cg test'
alias cg-t-nc='cg-t -- --nocapture'
alias cg-t-nff='cg-t --no-fail-fast'
alias cg-t-nc-nff='cg-t-nc'
alias cg-t-pkg='cg-t --package '
alias cg-t-doc='cg-t --doc '
alias cg-nextest='cg nextest run'
alias cg-nt='cg-nextest --test-threads 1 --no-fail-fast'

alias cg-ir='cargo insta review'

alias h='herdr'

cg-w-test() {
    local cmd_base="nextest run"

    local filters=""
    if [ "$#" -gt 0 ]; then
        for t in "$@"; do
            filters="$filters --test $t"
        done
    fi
    # local cmd_options="--test-threads 1 --no-fail-fast --features snapshotting"
    # local cmd_options="--test-threads 1"
    local cmd_options="--test-threads 1 --no-fail-fast"
    cargo watch -x "$cmd_base $filters $cmd_options"
}

function car-w-test-s() {
    local tests=("$@")
    local test_args=()
    for t in "${tests[@]}"; do
        test_args+=(--test "$t")
    done

    # cargo nextest run --test-threads 1 --no-fail-fast --features snapshotting "${test_args[@]}"
    cargo nextest run --test-threads 1 --no-fail-fast "${test_args[@]}"
}

fix-extensions() {
    EDITOR_ID="dev.zed.Zed"
    extensions=(
      "js" "ts" "jsx" "tsx" "rs" "md" "json" "yaml" "yml" "toml"
      "css" "html" "sh" "zsh" "py" "go" "c" "cpp" "h" "hpp" "txt"
    )
    for ext in "${extensions[@]}"; do
      echo "Setting $ext to $EDITOR_ID..."
      duti -s $EDITOR_ID "$ext" all
    done
    items=(
      "gitignore" "prettierrc" "eslintrc" "editorconfig" "env" "dockerignore"
    )
    
    for item in "${items[@]}"; do
        echo "Setting $item to $EDITOR_ID..."
      duti -s "$EDITOR_ID" "$item" all
    done
}