function _run_cmd() {
    local t=`date`
    echo "log info: $t: $1"
    eval $1
}

