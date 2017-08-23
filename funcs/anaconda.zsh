function __devinsba_theme_anaconda() {
    if (($+CONDA_DEFAULT_ENV)) ; then
        echo "conda(${CONDA_DEFAULT_ENV})"
    fi
}