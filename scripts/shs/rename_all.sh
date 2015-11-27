mvcmd='for f; do base=${f##*/}; mv -- "$f" "${f%/*}/${base//'
mvcmd+="$1"
mvcmd+="/"
mvcmd+="$2"
mvcmd+='}"; done'
find . -depth -name "*$1*" -not -path "./.git/*" -exec bash -c "$mvcmd" _ {} +
