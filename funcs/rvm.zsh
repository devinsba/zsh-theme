function __devinsba_theme_rvm() {
    rvm_version=$(command ~/.rvm/bin/rvm-prompt) || return 0
    echo "rvm(${rvm_version})"
}