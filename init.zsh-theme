function __theme_func() {
    RESULT=$($1)
    if [[ -n $RESULT ]] ; then
        echo -n "${RESULT};"
    fi
}

for F in $ANTIGEN_BUNDLES/devinsba/zsh-theme/funcs/*.zsh; do
    source $F
done

THEME_FUNCS=($(print -l ${(ok)functions} | grep __devinsba_theme))

PROMPT=$'$(for T in $THEME_FUNCS; do __theme_func $T; done) %~ %{$fg[cyan]%}%D{[%I:%M:%S]}\
%{$fg_bold[green]%}%n@%M $%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_DIRTY=" *"
ZSH_THEME_GIT_PROMPT_CLEAN=""