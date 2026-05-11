echo "🛣️ loading PATH"

# ─────────────────────────────
# 1. SYSTEM CORE (never overridden)
# ─────────────────────────────
PATH="/usr/bin:/bin:/usr/sbin:/sbin"

# ─────────────────────────────
# 2. HOMEBREW / CORE UNIX
# ─────────────────────────────
PATH="/opt/homebrew/bin:$PATH"
PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

# ─────────────────────────────
# 3. DEV TOOL CHAINS
# ─────────────────────────────
export VOLTA_HOME="$HOME/.volta"
PATH="$VOLTA_HOME/bin:$PATH"

export BUN_INSTALL="$HOME/.bun"
PATH="$BUN_INSTALL/bin:$PATH"

PATH="$HOME/.cargo/bin:$PATH"
PATH="$HOME/go/bin:$PATH"
PATH="$HOME/.dotnet/tools:$PATH"
PATH="$HOME/dotnet:$PATH"

# ─────────────────────────────
# 4. MOBILE / ANDROID
# ─────────────────────────────
export ANDROID_HOME="$HOME/Library/Android/sdk"
PATH="$ANDROID_HOME/platform-tools:$PATH"
PATH="$ANDROID_HOME/emulator:$PATH"

# (avoid legacy tools unless needed)
PATH="$ANDROID_HOME/tools/bin:$PATH"

# ─────────────────────────────
# 5. GUI TOOLS
# ─────────────────────────────
PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

# ─────────────────────────────
# 6. SPECIALIZED DEV TOOLS
# ─────────────────────────────
PATH="/opt/metasploit-framework/bin:$PATH"
PATH="$HOME/.modular/pkg/packages.modular.com_nightly_mojo/bin:$PATH"

export MODULAR_HOME="$HOME/.modular"

# ─────────────────────────────
# 7. JAVA / CLOUD SDK
# ─────────────────────────────
export JAVA_HOME=$(/usr/libexec/java_home -v "20")

if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then
  source "$HOME/google-cloud-sdk/path.zsh.inc"
fi

if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then
  source "$HOME/google-cloud-sdk/completion.zsh.inc"
fi

# ─────────────────────────────
# 8. MISC
# ─────────────────────────────
export HELIX_RUNTIME="$HOME/src/helix/runtime"
export DOTNET_ROOT="$HOME/dotnet"

[[ -f "$HOME/.dart-cli-completion/zsh-config.zsh" ]] && source "$HOME/.dart-cli-completion/zsh-config.zsh"
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
