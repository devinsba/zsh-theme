function __theme_func() {
    RESULT=$($1)
    echo "${RESULT};"
}

source $ANTIGEN_BUNDLES/devinsba/zsh-theme/funcs/*.zsh
THEME_FUNCS=$(print -l ${(ok)functions} | grep __devinsba_theme)

PROMPT=$'$(for T in $THEME_FUNCS; do __theme_func $T; done) ~ %t\
%{$fg_bold[green]%}%n@%M $%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_DIRTY=" *"
ZSH_THEME_GIT_PROMPT_CLEAN=""