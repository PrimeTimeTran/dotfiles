echo "02. 🛣️  paths loading..."

# Helper to prevent duplicate PATH entries and export immediately
path_add() {
  if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
    PATH="$1:$PATH"
    export PATH
  fi
}

# 1. Dev Toolchains
path_add "$VOLTA_HOME/bin"
path_add "$BUN_INSTALL/bin"
path_add "$PNPM_HOME/bin"
path_add "$HOME/.cargo/bin"
path_add "$HOME/go/bin"
path_add "$HOME/.dotnet/tools"
path_add "$HOME/dotnet"
path_add "$HOME/.local/bin"
# path_add "$HOME/tools/zig"
path_add "$HOME/tools/zig-0.17"
# 2. Homebrew (Specific versioned paths)
# Note: Use 'brew --prefix [pkg]' if these paths change often
path_add "/opt/homebrew/opt/sqlite/bin"
path_add "/opt/homebrew/opt/postgresql@15/bin"
path_add "/opt/homebrew/opt/llvm@17/bin"
path_add "/opt/homebrew/bin"

# 3. Mobile / Android
path_add "$ANDROID_HOME/emulator"
path_add "$ANDROID_HOME/tools/bin"
path_add "$ANDROID_HOME/platform-tools"

# 4. GUI & Specialized
# path_add "/opt/metasploit-framework/bin"
# path_add "/Applications/Inkscape.app/Contents/MacOS"
# path_add "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
# path_add "$HOME/.modular/pkg/packages.modular.com_nightly_mojo/bin"

path_add "$HOME/.pyenv/bin"
path_add "$HOME/.lmstudio/bin"

# export PATH="$HOME/bin:$PATH"

OFFICIAL_RA_BIN="$HOME/.rustup/toolchains/nightly-2026-06-30-aarch64-apple-darwin/bin/rust-analyzer"
# echo $OFFICIAL_RA_BIN
CUSTOM_RA_BIN="$HOME/KB/project/app/rust-analyzer/target/release/rust-analyzer"
# echo $CUSTOM_RA_BIN
# $ ls -la "$OFFICIAL_RA_BIN"
# $ ls -la "$CUSTOM_RA_BIN"

# Install again
# $ rustup component add rust-analyzer --toolchain nightly-2026-06-30-aarch64-apple-darwin

function ra-ck() {
    echo "Active binary path: $(which rust-analyzer)"
    echo "Version info: $(rust-analyzer --version)"
}
function ra-official() {
    mkdir -p "$HOME/bin"
    ln -sf "$OFFICIAL_RA_BIN" "$HOME/bin/rust-analyzer"
    hash -r
    echo "Switched to OFFICIAL rust-analyzer."
    ra-ck
}

function ra-custom() {
    mkdir -p "$HOME/bin"
    ln -sf "$CUSTOM_RA_BIN" "$HOME/bin/rust-analyzer"
    hash -r
    echo "Switched to CUSTOM rust-analyzer."
    ra-ck
}
# 5. Compiler Flags
# export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
# export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
# export LLVM_SYS_180_PREFIX="/opt/homebrew/opt/llvm@17"

# 1. Executes command
# export JAVA_HOME=$(/usr/libexec/java_home -v "20")
# 2. Lazy
# if [[ -z "$JAVA_HOME" ]]; then
#   export JAVA_HOME=$(/usr/libexec/java_home -v "20")
# fi

# Rust Analyzer local
# export PATH="$HOME/bin:$PATH"
# Note:
#   Zed: Assumes this LSP config
# {
#   "lsp": {
#     "rust-analyzer": {
#       "binary": {
#         "path": "/Users/future/bin/rust-analyzer"
#         // "arguments": [],
#         // "env": {},
#         // "ignore_system_version": ,
#       }
#     }
#   }
# }
