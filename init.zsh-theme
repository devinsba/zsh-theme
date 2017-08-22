ANACONDA_PART=""
if (($+CONDA_DEFAULT_ENV)) ; then
    ANACONDA_PART=" conda(${CONDA_DEFAULT_ENV})"
fi

PROMPT=$'%{$fg[white]%}$(~/.rvm/bin/rvm-prompt)$ANACONDA_PART %{$fg_bold[cyan]%}%~%{$reset_color%}$(git_prompt_info) %{$fg[cyan]%}%D{[%I:%M:%S]}\
%{$fg_bold[green]%}%n$%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[white]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""