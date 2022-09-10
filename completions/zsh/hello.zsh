#compdef _hello hello
autoload -U is-at-least

function _hello {
    _arguments - C \
    "-h[Show help]" \
    "1: :(option1 option2)" \
    "*::arg:->args"
}
