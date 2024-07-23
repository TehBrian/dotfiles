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

# Path-adding.
export PATH="/Users/brian/.deno/bin:$PATH" # Deno
export PATH="/opt/homebrew/opt/ruby/bin:$PATH" # Ruby
export PATH="/usr/local/opt/tcl-tk/bin:$PATH" # Tkinter

# Multiple Java versions.
java-v() {
	export JAVA_HOME="`/usr/libexec/java_home -v $1`"
	export PATH="`/usr/libexec/java_home -v $1`/bin:$PATH"
}

java8() { java-v 1.8; }
java17() { java-v 17; }
java21() { java-v 21; }
java22() { java-v 22; }

java22

# Average Rust user rewriting standard programs.
alias cat="bat --paging=never --theme=Nord --style=plain"
# alias ls="eza --git --group-directories-first"

# Initialize pyenv.
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Disable annoying autocorrect prompt.
unsetopt correct
