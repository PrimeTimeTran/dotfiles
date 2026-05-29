# --- Log Formatting (gl- prefix) ---
alias gl-graph="git log --oneline --graph --all"
alias gl-show="git log --graph --pretty=format:'%h %s%n%b' -n 5"
alias gl-diff="git log -p"
alias gl-stat="git log --stat"

# --- Branch Formatting (gb- prefix) ---
alias gb-branch-version="git branch -v"
alias gb-verbose="git branch -v"
alias gb-list="git branch --format='%(refname:short)'"
alias gb-author="git branch --format='%(refname:short)  |  %(authorname)'"
alias gb-last="git branch -v --format='%(refname:short)  |  %(contents:subject)'"
alias gb-sorted="git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)  |  %(committerdate:relative)'"
alias gb-sorted-v="git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)  |  %(committerdate:iso8601)'"

# Commits
alias gc-msg="git commit -m"
alias gc-nv="git commit --no-verify"
alias gc-nv-m="git commit --no-verify -m"

# Amend / "Fast-Fix" (Your workflow)
alias ga-base="git commit --amend"
alias ga-nv-ne="git commit --amend --no-verify --no-edit"

# --- Pointer Aliases (The "Defaults" or "Interface") ---
alias gl="gl-graph"
alias gb="gb-verbose"
alias gc="gc-msg"
alias gs="g-status"
alias gp="g-push"
alias gpf="g-push-force"
alias gaa="g-add-all"
alias gat="g-add-update"

# --- Compound "Fast-Fix" Pointers ---
alias ff="gaa && ga-nv-ne"
alias ffp="gaa && ga-nv-ne && gpf"

# --- Utility (g- prefix) ---
alias g-tags="git tag"
alias g-clean="git gc --prune=now"
