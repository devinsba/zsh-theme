function __devinsba_theme_nvm() {
    if [ -n "$(whence -v nvm_version)" ] ; then
        nvm_version=$(command nvm_version) || return 0
        echo "nvm(${nvm_version})"
    fi
}