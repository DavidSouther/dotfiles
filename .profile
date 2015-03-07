export PATH="$HOME/bin:$PATH"

for f in $(ls $HOME/.profile.d) ; do
    source "$HOME/.profile.d/$f"
done
