source $ANTIGEN_BUNDLES/devinsba/zsh-theme/lib/*.zsh

PROMPT=$'$(__devinsba_theme_anaconda)$(git_prompt_info)\
%{$fg_bold[green]%}%n@%M $%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[white]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""