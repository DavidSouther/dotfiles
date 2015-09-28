export PATH="$HOME/bin:$PATH"

for f in $(ls $HOME/.profile.d/*.sh) ; do
    source "$f"
done
