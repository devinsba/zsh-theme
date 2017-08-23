function __devinsba_theme_anaconda() {
    if (($+CONDA_DEFAULT_ENV)) ; then
        echo $CONDA_DEFAULT_ENV
    fi
}