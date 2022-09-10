#compdef _hello hello

_hello() {
    _arguments -s -S -C \
    "-h[Show help]" \
    "1: :(option1 option2)" \
    "*::arg:->args"
}
