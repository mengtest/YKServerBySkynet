---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2018/8/28 16:30
---

 local function class(base)
    local o = {}
    --base = base or {}
    setmetatable(o,base)
    o.__index = o
    o.super = base
    o.new = function (...)
        local t = {}
        setmetatable(t, o)
        local initFunc
        initFunc =
        function (c,...)
            if c.super then
                initFunc(c.super,...)
            end
            if c._init then
                c._init(o,...)
            end
        end
        initFunc(t,...)
        return t
    end
    return o
end

return class