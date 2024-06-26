# Loads all configurations in .zshrc.d
for file in $HOME/.zshrc.d/*; do
  source $file
done
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
