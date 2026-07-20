echo "4. 🔢 loading..."

BOLD='\033[1m'
GREEN='\033[32m'
RED='\033[31m'
NC='\033[0m'
# printf "%-20s %-10s\n" "MOUNT POINT" "STATUS"
# printf "%-20s %-10s\n" "--------------------" "----------"
# printf "%-20s %-10s\n" "~/KB/project/app/loi/crates/leviticus/fuse_fs" "ACTIVE"

foo-args() {
    echo -e "${GREEN}${BOLD} Title: ${NC} foo-args"
    local first_arg="$1"
    local total_args="$#"
    local all_args=("$@")
    echo -e "${GREEN}✔ Total Args #:${NC} $total_args"
    echo -e "${GREEN}  Arg 1:${NC} $first_arg"
    echo "Processing all arguments:"
    for item in "${all_args[@]}"; do
        echo -e "${GREEN}  - Found:${NC} $item"
    done
}

foo-repeat() {
    if [ -z "$1" ]; then
        echo "Usage: foo-repeat <number>"
        return 1
    fi
    local n=$1
    for (( i=1; i<=n; i++ )); do
        echo "This is iteration $i of $n"
    done
}

foo-pipe() {
    if [ -z "$1" ]; then
        echo "Usage: foo-pipe <string_with_pipes>"
        return 1
    fi
    local input="$1"
    local items=("${(@s/|/)input}")
    echo "Processing pipe-delimited list:"
    for item in "${items[@]}"; do
        echo "  - Found: $item"
    done
}

foo-manual-parser() {
    local target="."
    local type="svg"
    while [ "$#" -gt 0 ]; do
        case "$1" in
            -d) target="$2"; shift 2 ;;
            -t) type="$2"; shift 2 ;;
            *)  echo "Unknown flag: $1"; return 1 ;;
        esac
    done
    echo "Target: $target, Type: $type"
}

alias dls="downloadStream"
downloadStream() {
  ffmpeg -i "$2" -bsf:a aac_adtstoasc -vcodec copy -c copy -crf 50 "$1.mp4"
}

alias sc="searchCommand"
searchCommand() {
    fc -ln 0 | tac | grep "$@" | yank -l
}
# echo "In-memory limit: $HISTSIZE"
# echo "On-disk limit: $HISTFILESIZE"
# 
alias sf="searchDirRecursivelyForFilesByText"
alias sdfs="searchDirRecursivelyForFilesByText"
searchDirRecursivelyForFilesByText() {
  local input="$1"
  shift
  # default directory is "."
  set -- "${@:-.}"

  local expr=()
  local first=1

  for p in ${input//|/ }; do
    [ -z "$p" ] && continue

    if [ $first -eq 1 ]; then
      expr+=( -iname "*$p*" )
      first=0
    else
      expr+=( -o -iname "*$p*" )
    fi
  done

  find "$@" "(" "${expr[@]}" ")"
}

javahome() {
    unset JAVA_HOME
    export JAVA_HOME=$(/usr/libexec/java_home -v "$1");
    java -version
}

dotrepo() {
    git --git-dir="$HOME/.cfg" --work-tree="$HOME" "$@"
}

# dr-a() {
#     dotrepo add "$@"
# }

copydir() {
  pwd | tr -d "\r\n" | pbcopy
}

cw() {
    watchman watch-del "$PWD" ; watchman watch-project "$PWD"
}

asrun() {
    if [ -z "$1" ]; then
        echo "Usage: asrun <directory>"
        return 1
    fi
    dir="$1"
    shift
    as -o "${dir}/app.o" "${dir}/app.s" &&
    ld -o "${dir}/app" "${dir}/app.o" -e _start -L /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -lSystem &&
    ./"${dir}/app" "$@"
}

ls-size() {
    local target="."
    local extension="*.svg"

    while getopts "d:t:" opt; do
        case $opt in
            d) target="$OPTARG" ;;
            t) extension="*.$OPTARG" ;;
        esac
    done

    # %f = filename, %s = size in bytes.
    # Use 'human-readable' equivalent by dividing by 1024 or using du
    find "$target" -type f -name "$extension" ! -name '.*' -printf "%p %s\n" | \
    awk '{
        size=$NF/1024;
        printf "%-50s %8.2f KB\n", $1, size
    }'
}

sanitize-project() {
  echo "Applying .noindex to dependency directories..."
  find . -maxdepth 3 -type d \( -name "node_modules" -o -name ".venv" -o -name "venv" -o -name "target" \) -exec touch {}/.noindex \;
  echo "Done. Spotlight will now ignore these folders."
}

set-finder-ext-icons() {
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

# This cleans your entire home directory of "noisy" folders
clean-spotlight() {
  # find . -maxdepth 1 -type d ! -name "." ! -name "Documents" ! -name "KB" ! -name "Library" -exec touch {}/.noindex \;
  echo "Applying .noindex to all non-essential folders..."
  # Target common junk folders
  find ~/Downloads ~/Movies ~/Pictures ~/Music ~/Public -maxdepth 1 -type d -exec touch {}/.noindex \;
  # Target your project build folders
  find ~/Documents ~/KB -maxdepth 4 -type d \( -name "node_modules" -o -name ".venv" -o -name "venv" -o -name "target" \) -exec touch {}/.noindex \;
  echo "Done. Spotlight will only focus on your active work."
}
# # Cache the current icon to avoid re-running logic
# # typeset -g _LAST_ICON=""

# set_terminal_icon() {
#   local ICON_DIR="$HOME/.icon/png"
#   local ICON=""

#   if [[ -f "Cargo.toml" ]]; then
#     ICON="$ICON_DIR/rust.png"
#   elif [[ "$PWD" == *"/blog"* ]]; then
#     ICON="$ICON_DIR/blog.png"
#   fi

#   # Only update if the icon actually changed
#   if [[ "$ICON" != "$_LAST_ICON" ]]; then
#     _LAST_ICON="$ICON"
    
#     # Send sequences
#     echo -ne "\e]1337;SetTerminalIcon=$ICON\a"
    
#     if [[ -n "$KITTY_WINDOW_ID" ]]; then
#       # If icon is empty, clear the logo
#       [[ -z "$ICON" ]] && kitty @ set-window-logo --full --position center "" 2>/dev/null || \
#                           kitty @ set-window-logo --full --position center "$ICON" 2>/dev/null
#     fi
#   fi
# }

# autoload -U add-zsh-hook
# add-zsh-hook chpwd set_terminal_icon
# set_terminal_icon

build() {
    local name="${1%.c}"
    shift

    local src="target/$name.c"
    local out="tmp/$name"

    mkdir -p tmp

    gcc -g -O0 -S "$src" -o "$out.s" &&
    gcc -g -O0 -c "$src" -o "$out.o" &&
    gcc -g -O0 "$@" "$src" -o "$out" || return

    echo
    echo "=== Running $name ==="

    "$out"
    local exit_code=$?

    echo

    case $exit_code in
        0)
            echo "Success"
            ;;
        1)
            echo "General error"
            ;;
        134)
            echo "Abort (SIGABRT) - usually allocator/runtime detected a problem"
            ;;
        136)
            echo "Floating point exception (SIGFPE)"
            ;;
        137)
            echo "Killed (SIGKILL)"
            ;;
        138)
            echo "Bus error (SIGBUS) - invalid memory alignment/access"
            ;;
        139)
            echo "Segmentation fault (SIGSEGV) - invalid memory access"
            ;;
        141)
            echo "Broken pipe (SIGPIPE)"
            ;;
        143)
            echo "Terminated (SIGTERM)"
            ;;
        *)
            echo "Unknown exit status: $exit_code"
            ;;
    esac

    echo "Exit status: $exit_code"
}

build_sanitize() {
    local name="${1%.c}"
    shift

    local src="target/$name.c"
    local out="tmp/$name"

    mkdir -p tmp

    gcc \
        -g \
        -O0 \
        -fsanitize=address,undefined \
        "$@" \
        "$src" \
        -o "$out" || return

    echo
    echo "=== Running $name ==="

    "$out"
}

_build_examples() {
    local -a files
    local file

    files=()

    for file in target/*.c; do
        files+=("${file:t:r}")
    done

    _describe 'examples' files
}

compdef _build_examples build
compdef _build_examples build_sanitize

build_pthread() {
    local name="${1%.c}"
    local src="target/$name.c"
    local out="tmp/$name"

    mkdir -p tmp

    gcc -S "$src" -o "$out.s" &&
    gcc -c "$src" -o "$out.o" &&
    gcc -pthread "$src" -o "$out" &&
    "$out"
}