package = "lua-resty-redis-cluster"
version = "1.0-1"
source = {
    url = "https://github.com/steve0511/resty-redis-cluster/"
}
description = {
    summary = "Openresty lua client for redis cluster",
    detailed = [[
        Openresty environment lua client with redis cluster support.
        This is a wrapper around the 'resty.redis' library with cluster discovery 
        and failover recovery support.
    ]],
    license = "Apache License 2.0"
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        ["resty.rediscluster"] = "resty/rediscluster.lua",
        ["resty.xmodem"] = "resty/xmodem.lua",
        ["resty.redis"] = "resty/redis.lua",
    }
}
