function __devinsba_theme_nvm() {
    nvm_version=$(command nvm_prompt_info) || return 0
    echo "nvm(${nvm_version})"
}