function __devinsba_theme_nvm() {
    if [ -n "$(type -t nvm_prompt_info)" ] ; then
        nvm_version=$(command nvm_prompt_info) || return 0
        echo "nvm(${nvm_version})"
    fi
}