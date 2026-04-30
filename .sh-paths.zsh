echo "🛣️ loading"
export BUN_INSTALL="$HOME/.bun"
export PATH="/Library/PostgreSQL/15/bin:$PATH"
export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$PATH"
export PATH="$ANDROID_HOME/tools:$PATH"
export PATH="$ANDROID_HOME/tools/bin:$PATH"
export PATH="$ANDROID_HOME/emulator:$PATH"
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/opt/metasploit-framework/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/Users/future/.modular/pkg/packages.modular.com_nightly_mojo/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/Users/future/go/bin:$PATH"
export PATH="/Users/future/go/bin/protoc-gen-go:$PATH"
export PATH="/Users/future/.dotnet/tools:$PATH"
export PATH="$HOME/dotnet:$PATH"

export EDITOR="code -w"
export DOTNET_ROOT=$HOME/dotnet
export PATH="$HOME/flutter/bin:$PATH"
export HELIX_RUNTIME=~/src/helix/runtime
export MODULAR_HOME="/Users/future/.modular"
export JAVA_HOME=$(/usr/libexec/java_home -v "20");
export ANDROID_HOME="/Users/future/Library/Android/sdk"
export VSToolsPath="/Library/Frameworks/Mono.framework/Versions/Current/lib/mono/xbuild/Microsoft/VisualStudio/v17.0/"

__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f '/Users/future/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/future/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/Users/future/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/future/google-cloud-sdk/completion.zsh.inc'; fi
[[ -f /Users/future/.dart-cli-completion/zsh-config.zsh ]] && . /Users/future/.dart-cli-completion/zsh-config.zsh || true
[ -s "/Users/future/.bun/_bun" ] && source "/Users/future/.bun/_bun"
