echo "🔢 loading"

alias dls="downloadStream"
downloadStream() {
  ffmpeg -i "$2" -bsf:a aac_adtstoasc -vcodec copy -c copy -crf 50 "$1.mp4"
}
alias sc="searchCommand"
searchCommand() {
    fc -ln 0 | grep "$@" | yank -l
}

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

config() {
    git --git-dir="$HOME/.cfg" --work-tree="$HOME" "$@"
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

