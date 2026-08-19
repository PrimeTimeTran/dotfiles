# # --- Log Formatting (gl- prefix) ---
# alias gl-graph="git log --oneline --graph --all"
# alias gl-graph-with-date="git log --graph --all --format='%C(auto)%h%Creset %Cgreen%ad%Creset %s' --date=format:%y-%m-%d"
# alias gl-graph-with-date-author="git log --graph --all --format='%C(auto)%h%Creset %Cgreen%ad%Creset %Cblue%an%Creset <%ae> %s' --date=format:%y-%m-%d"
# alias gl-full-hash="git log --oneline --no-abbrev-commit"
# # alias gl-show="git log --graph --pretty=format:'%h %s%n%b' -n 5"

# Implementation: Log with dynamic limit
function gl-show() {
    local limit=${1:-10}
    git log --graph --pretty=format:'%h %s%n%b' -n "$limit"
}

alias gl-diff="git log -p"
alias gl-stat="git log --stat"

# --- Branch Formatting (gb- prefix) ---
gb() {
  local branch='%(align:31,left)%(HEAD) %(refname:short)%(end)'
  local author='%(align:25,left)%(authorname)%(end)'
  local relative='%(align:25,left)%(committerdate:relative)%(end)'
  local absolute='%(align:25,left)%(committerdate:iso8601)%(end)'

  case "$1" in
    list)
      git --no-pager branch \
        --format="$branch"
      ;;

    info)
      git --no-pager branch \
        --format="$branch | %(contents:subject)"
      ;;

    authors)
      git --no-pager branch \
        --format="$branch | $author"
      ;;

    details)
      git --no-pager branch \
        --format="%(color:yellow)$branch%(color:reset) | $author | $relative"
      ;;

    recent)
      git --no-pager for-each-ref \
        --sort=-committerdate \
        refs/heads/ \
        --format="%(color:yellow)$branch%(color:reset) | $relative"
      ;;

    recent-absolute)
      git --no-pager for-each-ref \
        --sort=-committerdate \
        refs/heads/ \
        --format="%(color:yellow)$branch%(color:reset) | $absolute"
      ;;

    local)
      git --no-pager branch -v
      ;;

    all)
      git --no-pager branch -av
      ;;

    *)
      echo "gb commands:"
      echo "  list              List branch names"
      echo "  info              Branch + last commit"
      echo "  authors           Branch + author"
      echo "  details           Branch + author + date"
      echo "  recent            Branches sorted by recent commit"
      echo "  recent-absolute   Same, with absolute dates"
      echo "  local             Local branches + commit"
      echo "  all               Local + remote branches + commit"
      ;;
  esac
}
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

# --- Compound "Fast-Fix" Pointers ---
alias ff="gaa && ga-nv-ne"
alias ffp="gaa && ga-nv-ne && gpf"

# --- Utility (g- prefix) ---
alias g-tags="git tag"
alias g-clean="git gc --prune=now"

# Pushing
alias g-push="git push"
alias g-push-force="git push --force"

alias gaa="g-add-all"
alias gcm="gc-msg"
alias g-amend="git commit --amend"

alias gp="g-push"
alias gpf="g-push-force"
alias gpom="gp origin main"

# --- Pointer Aliases (The "Defaults" or "Interface") ---
alias gl="gl-graph"
alias gs='git status'

# Undo changes to a dir
# git restore estate/persona.dev

# 1. List commits that changes a file
# git log --all --diff-filter=D -- app/loi/crates/learn/public/docs/versions.json
# 2. List commits that changed a dir
# git log --all --oneline --diff-filter=D -- app/loi/crates/learn/gen/public
# 3. View content of file at commit.
# git show 04041095:app/loi/crates/learn/gen/public/index.html

# 4. View all the commits with changes to a dir
# git log --all --oneline -- app/loi/crates/learn/gen/public

# 5. Print the file names includes in a commit
# git ls-tree -r --name-only acdceccd -- app/loi/crates/learn/public/index.html

# 6. Print all files in a series of commits
# for commit in d3ae0bda 39353c6e 04041095 ad328a10 acdceccd; do
#   echo
#   echo "===== $commit ====="
#   git ls-tree -r --name-only "$commit" -- app/loi/crates/learn/gen/public/
# done

# 7. Print index.html file in the commit
# for commit in d3ae0bda 39353c6e 04041095 ad328a10 acdceccd; do
#   echo
#   echo "===== $commit ====="

#   if git cat-file -e "$commit:app/loi/crates/learn/gen/public/index.html" 2>/dev/null; then
#     git show "$commit:app/loi/crates/learn/gen/public/index.html"
#   else
#     echo "[index.html does not exist at this commit]"
#   fi
# done

# Print just the .html files form a list of commits.
# for commit in \
#   04041095
# do
#   echo
#   echo "===== $commit ====="

#   git ls-tree -r --name-only "$commit" | grep -E '\.html$' | while read file; do
#     echo "--- $file ---"
#     git show "$commit:$file" 2>/dev/null | head -n 5
#   done
# done

# files in this commit only
# git diff-tree --no-commit-id --name-only -r 04041095 |
# while read file; do
#   echo
#   echo "===== $file ====="
#   git show "04041095:$file" 2>/dev/null
# done


# Find commits that include a string literal in their content
# git log --all -S'DIP Estate Specification Reader' --oneline

# Find commit where a file was deleted
# git log --all --diff-filter=D --name-status -- '*versions.json'

# app/loi/crates/learn/public/docs/versions.json
#
# app/loi/crates/learn/public/docs/versions.json

# show file at commit at path in VSCode
# git show ad328a10^:app/loi/crates/learn/public/docs/versions.json > /tmp/versions.json
# code /tmp/versions.json
