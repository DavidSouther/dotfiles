if [ -d $HOME/.profile.private.d ] ; then 
    for f in $(ls $HOME/.profile.private.d) ; do
        source "$HOME/.profile.private.d/$f"
    done
fi