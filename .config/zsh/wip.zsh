# WIP Scripts/Tools

# Build and run Rust
alias rr="build_rust "
build_rust() {
    local file="$1"
    shift

    [[ -z "$file" ]] && {
        echo "usage: build_rust <file>"
        return 1
    }

    local src="target/$file"
    local name="${file%.*}"
    local out="tmp/$name"

    [[ -f "$src" ]] || {
        echo "Missing source: $src"
        return 1
    }

    mkdir -p tmp

    echo "=== Building $file ==="

    # cargo run --quiet -- "$src" -o "$out" "$@" || return 1
    cargo run -- "$src" -o "$out" "$@" || return 1

    echo
    echo "=== Running $name ==="

    "$out"
    local exit_code=$?

    echo
    echo "Exit status: $exit_code"

    return $exit_code
}
_build_examples() {
    local -a files
    local file

    files=()

    for file in target/*(.); do
        files+=("${file:t}")
    done

    _describe 'examples' files
}

alias ru-d='rustup doc'
alias ru-s='rustup doc --std'
alias ru-b='rustup doc --book'

alias cg='cargo '
alias cg-r='cg run --quiet '
alias cg-rb='cg-r --bin '
alias cg-ck='cg check '

alias cg-t='cg test'
alias cg-t-nc='cg-t -- --nocapture'
alias cg-t-nff='cg-t --no-fail-fast'
alias cg-t-nc-nff='cg-t-nc'
alias cg-t-pkg='cg-t --package '
alias cg-t-doc='cg-t --doc '
alias cg-nextest='cg nextest run'
alias cg-nt='cg-nextest --test-threads 1 --no-fail-fast'
alias cg-b='cg build'
alias cg-b-b='cg-b --bin '

alias cg-ir='cargo insta review'
