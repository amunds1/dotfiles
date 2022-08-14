# Loads all configurations in .zshrc.d
for file in $HOME/.zshrc.d/*; do
  source $file
done