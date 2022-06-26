# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Source plugins.
source ~/.zplugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# Multiple versions of Java.
export JAVA_11_HOME=$(/usr/libexec/java_home -v11)
export JAVA_17_HOME=$(/usr/libexec/java_home -v17)
export JAVA_18_HOME=$(/usr/libexec/java_home -v18)
alias java11='export JAVA_HOME=$JAVA_11_HOME'
alias java17='export JAVA_HOME=$JAVA_17_HOME'
alias java18='export JAVA_HOME=$JAVA_18_HOME'

# Default to Java 17.
java17

# Path-adding.
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/zip/bin:$PATH"

# Ctrl+E to pipe previous command to less. reddit.com/ugvh2p
bindkey -s "^e" '!!^Xa | less'
