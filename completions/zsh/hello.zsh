#compdef _hello hello

_hello() {
    _arguments -s -S -C \
    "-h[Show help]" \
    "1: :_hello_fzf" \
    "*::arg:->args"
    
    TRAPEXIT() {
        zle reset-prompt
    }
}
_hello_fzf() {
    local -a options=("option1" "option2")
    
    local -a fzf=(
        fzf
        --no-multi
        --ansi
        --no-sort
        --cycle
        --reverse
        --exit-0
        --select-1
        --height 40%
        --preview-window=right:60%:wrap
    )
    local -a choice
    choice="$(printf "%s\n" ${options[@]} | $fzf)"
    zle -U "$choice"
    zle .accept-line
}

cl-widget(){
    emulate -LR zsh
    
    hello
    zle .accept-line
    return 0
}

zle -N _cl
zle -N cl-widget

bindkey '^h^h' cl-widget
