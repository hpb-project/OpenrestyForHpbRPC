function reset_post_body()
    --Nginx服务器中使用lua获取get或post参数
    
    local request_method = ngx.var.request_method;
    --获取参数的值
    --[[
    local args = nil;
    if "GET" == request_method then
        args = ngx.req.get_uri_args();
    elseif "POST" == request_method then
        ngx.req.read_body();
        args = ngx.req.get_post_args();
    end
    --]]
    local cjson = require "cjson";
    local request_body = ngx.req.get_body_data();
    local request_data = cjson.decode(request_body);

    request_data.method=string.gsub(request_data["method"], "eth_", "hpb_", 1);
    local json_data = cjson.encode(request_data);
    ngx.req.set_body_data(json_data);
end
return reset_post_body();