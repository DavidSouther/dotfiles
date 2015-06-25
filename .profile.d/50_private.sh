for f in $(ls $HOME/.profile.private.d) ; do
    source "$HOME/.profile.private.d/$f"
done
