echo "4. 🔢 functions loading..."

# printf "%-20s %-10s\n" "MOUNT POINT" "STATUS"
# printf "%-20s %-10s\n" "--------------------" "----------"
# printf "%-20s %-10s\n" "~/KB/project/app/loi/crates/leviticus/fuse_fs" "ACTIVE"

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
compdef _build_examples build
compdef _build_examples build_rust
compdef _build_examples build_sanitize
compdef _build_examples build_pthread
