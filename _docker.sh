function _remove_container() {
    local container_name=$1
    local cmd="docker rm -f $container_name"
    _run_cmd "$cmd"
}

function _send_cmd_to_container() {
    local _container=$1
    local _cmd=$2
    local cmd="docker exec -it $_container $_cmd"
    _run_cmd "$cmd"
}

function _link_node_modules() {
    if [ -d "$1/node_modules" ]; then
        _run_cmd "rm $1/node_modules"
    fi
    _run_cmd "ln -sf /opt/node_npm_data/node_modules $1"
}

