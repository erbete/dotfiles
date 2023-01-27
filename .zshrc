export PATH="$HOME/bin:$PATH"

# .net core
export PATH="$PATH:$HOME/.dotnet/tools/" 
export DOTNET_CLI_TELEMETRY_OPTOUT=1 # disable telemetry

# zig
export PATH="$PATH:$HOME/zig"

# fd
export PATH="$PATH:$HOME/.local/bin"

# go
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

# pfetch
export PF_INFO="ascii title os kernel uptime memory" 
export PF_ASCII="linux" 
pfetch

# grpc-go protoc compiler
#export PATH="$PATH:$(go env GOPATH)/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init zsh)"
