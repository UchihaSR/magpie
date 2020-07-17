while getopts '' flag; do
    case $flag in
        *) exit 1 ;;
    esac
done
