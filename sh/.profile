export PATH="$HOME/bin:$PATH"

for f in $(ls $HOME/.profile.d/*.sh) ; do
    source "$f"
done

# Simplify the path.
export PATH=$(\
  echo $PATH | \
    tr ":" "\n" | \
    sort | uniq | \
    awk '{ print length($0) " " $0}' | \
    sort -nr | \
    awk '{print $2}' | \
    tr '\n' ':' \
)


# GOOGLE ONLY
goog3
