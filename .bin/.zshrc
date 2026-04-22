eval "$(starship init zsh)"
alias ls='eza --classify'
alias ll='eza --classify -la'
alias tree='eza --classify --tree' 
export PATH=$PATH:$HOME/go/bin
. "$HOME/.local/bin/env"

# bun completions
[ -s "/Users/watahikishinya/.bun/_bun" ] && source "/Users/watahikishinya/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/opt/go@1.24/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/watahikishinya/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
# Added by Antigravity
export PATH="/Users/watahikishinya/.antigravity/antigravity/bin:$PATH"
