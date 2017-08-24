function __devinsba_theme_rvm() {
    if [ -f ~/.rvm/bin/rvm-prompt ] ; then
        ruby_version=$(command ~/.rvm/bin/rvm-prompt) || return 0
        echo "rvm(${ruby_version})"
    fi
}