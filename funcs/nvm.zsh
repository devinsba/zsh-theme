function __devinsba_theme_nvm() {
    if [ -n "$(whence -v nvm_version)" ] ; then
        node_version=$(nvm_version) || return 0
        echo "nvm(${node_version})"
    fi
}