# Zachary Alan Saylor's .zshrc configuration
#
# STRUCTURE:
# # Environment variables and paths
# # Oh-My-Zsh settings (theme, plugins, etc.)
# # User configuration (custom settings, aliases, functions, etc.)

# ENVIRONMENT
export ZSH="$HOME/.oh-my-zsh"
export PATH="/usr/local/bin:${PATH}"
export PATH="./:$PATH"
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/highlighters
export GRPC_VERBOSITY=ERROR
export GLOG_minloglevel=2
export TF_CPP_MIN_LOG_LEVEL=2
export TAVILY_API_KEY="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"

# OH-MY-ZSH SETTINGS
# ZSH_THEME=""
# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"
ENABLE_CORRECTION="true"
CORRECT_IGNORE_FILE=".config"
HIST_STAMPS="yyyy-mm-dd"
plugins=(git zsh-autosuggestions zsh-interactive-cd zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# USER CONFIGURATION
alias vim="nvim"
alias zshr="source ~/.zshrc"
alias zshconf="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias gconf="vim ~/Library/Application\ Support/com.mitchellh.ghostty/config"
alias gloga="git log --oneline --graph --all"
alias gamerun="docker build --tag game-image . && docker run --publish 3000:80 --detach --name game game-image"
alias gamestop="docker stop game && docker rm game"
alias tree="lsd --tree"
alias mudang="cd ~/forge/mudang && source venv/bin/activate"
alias mudangrun="streamlit run app.py"

# Starship init should be at end of file
eval "$(starship init zsh)"
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

