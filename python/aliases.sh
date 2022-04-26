mkvenv() {
    mkvirtualenv -p "$(brew --prefix)/opt/python@$1/bin/python$1" $2
}
