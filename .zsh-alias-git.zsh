# --- Log Formatting (gl- prefix) ---
alias gl-graph="git log --oneline --graph --all"
alias gl-graph-with-date="git log --graph --all --format='%C(auto)%h%Creset %Cgreen%ad%Creset %s' --date=format:%y-%m-%d"
alias gl-graph-with-date-author="git log --graph --all --format='%C(auto)%h%Creset %Cgreen%ad%Creset %Cblue%an%Creset <%ae> %s' --date=format:%y-%m-%d"
# alias gl-show="git log --graph --pretty=format:'%h %s%n%b' -n 5"

# Implementation: Log with dynamic limit
function gl-show() {
    local limit=${1:-10}
    git log --graph --pretty=format:'%h %s%n%b' -n "$limit"
}

alias gl-diff="git log -p"
alias gl-stat="git log --stat"

# --- Branch Formatting (gb- prefix) ---
alias gb-version="git branch -v"
alias gb-verbose="git branch -av"
alias gb-list="git branch --format='%(refname:short)'"
alias gb-author="git branch --format='%(refname:short)  |  %(authorname)'"
alias gb-last="git branch -v --format='%(refname:short)  |  %(contents:subject)'"
alias gb-sorted="git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)  |  %(committerdate:relative)'"
alias gb-sorted-v="git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)  |  %(committerdate:iso8601)'"

alias gco="git checkout"
alias gco-b="git checkout -b"

# Commits
alias g-add-all="git add ."
alias gc-msg="git commit -m"
alias gc-nv="git commit --no-verify"
alias gc-nv-m="git commit --no-verify -m"

# Amend / "Fast-Fix" (Your workflow)
alias ga-base="git commit --amend"
alias ga-nv-ne="git commit --amend --no-verify --no-edit"

# Pushing
alias g-push="git push"
alias g-push-force="git push --force"

# --- Compound "Fast-Fix" Pointers ---
alias ff="gaa && ga-nv-ne"
alias ffp="gaa && ga-nv-ne && gpf"

# --- Utility (g- prefix) ---
alias g-tags="git tag"
alias g-clean="git gc --prune=now"

# --- Pointer Aliases (The "Defaults" or "Interface") ---
alias gl="gl-graph"
alias gb="gb-version"
alias gs='git status'

alias gaa="g-add-all"
alias gcm="gc-msg"
alias g-amend="git commit --amend"

alias gp="g-push"
alias gpf="g-push-force"
