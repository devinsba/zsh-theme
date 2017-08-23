function __devinsba_theme_git() {
    ref=$(command git symbolic-ref HEAD 2> /dev/null)  || ref=$(command git rev-parse --short HEAD 2> /dev/null)  || return 0
    echo "git(${ref#refs/heads/}$(parse_git_dirty))"
}