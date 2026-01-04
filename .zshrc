
  # Zinit 插件管理器
  ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
  source "${ZINIT_HOME}/zinit.zsh"

  # ========================================
  # 核心插件
  # ========================================
  zinit light zsh-users/zsh-autosuggestions
  zinit light zsh-users/zsh-completions
  zinit light zsh-users/zsh-syntax-highlighting
  zinit light Aloxaf/fzf-tab

  # 自动建议配置
  ZSH_AUTOSUGGEST_STRATEGY=(history completion)

  # ========================================
  # Starship 提示符
  # ========================================
  eval "$(starship init zsh)"

  # ========================================
  # 现代化工具别名
  # ========================================
  # bat (更好的 cat)
  alias cat='bat --style=plain'
  alias catp='bat --style=full'

  # eza (更好的 ls)
  alias ls='eza --icons'
  alias ll='eza -l --icons --git'
  alias la='eza -la --icons --git'
  alias tree='eza --tree --icons'

  # zoxide (智能 cd)
  eval "$(zoxide init zsh)"

  # ripgrep
  alias grep='rg'

  # ========================================
  # 实用函数
  # ========================================

  # 创建并进入目录
  mkcd() {
      mkdir -p "$1" && cd "$1"
  }
 # ========================================
  # 历史记录配置
  # ========================================
  HISTSIZE=10000
  SAVEHIST=10000
  HISTFILE=~/.zsh_history
  setopt SHARE_HISTORY
  setopt HIST_IGNORE_ALL_DUPS
  setopt HIST_FIND_NO_DUPS

  # ========================================
  # 补全系统
  # ========================================
  autoload -U compinit && compinit
  zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
  zstyle ':completion:*' menu select
  zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'

  # ========================================
  # PATH 配置
  # ========================================
  export PATH="$HOME/.local/bin:$PATH"
  export PATH="/opt/homebrew/bin:$PATH"

  # ========================================
  # 快捷配置管理
  # ========================================
  alias reload="source ~/.zshrc && echo '✓ 配置已重新加载'"

  cursor() {
    if [ $# -eq 0 ]; then
      open -a "Cursor"
    else
      open -a "Cursor" "$@"
    fi
  }

  antigravity() {
    if [ $# -eq 0 ]; then
      open -a "Antigravity"
    else
      open -a "Antigravity" "$@"
    fi
  }

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust
### End of Zinit's installer chunk

export HOMEBREW_API_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api"
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
export HOMEBREW_PIP_INDEX_URL="https://pypi.tuna.tsinghua.edu.cn/simple"
export HOMEBREW_API_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api"
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
export HOMEBREW_PIP_INDEX_URL="https://pypi.tuna.tsinghua.edu.cn/simple"
export HOMEBREW_API_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api"
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
