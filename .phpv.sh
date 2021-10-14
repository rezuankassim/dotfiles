phpv() {
    valet stop
    brew unlink php@7.0
    brew unlink php@7.1
    brew unlink php@7.2
    brew unlink php@7.4
    brew unlink php
    brew link --force --overwrite $1
    brew services stop php@7.0
    brew services stop php@7.1
    brew services stop php@7.2
    brew services stop php@7.4
    brew services stop php 
    brew services start $1
    composer global update
    rm -f ~/.config/valet/valet.sock
    valet install
}

alias php70="phpv php@7.0"
alias php71="phpv php@7.1"
alias php72="phpv php@7.2"
alias php74="phpv php@7.4"
alias php80="phpv php"
