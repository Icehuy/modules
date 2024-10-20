local rw = {}
function rw.data()

    return {
        ["::-1"] = function(...) return rw.env.name end,
        ["::-/.3:"] = function(...) 
            return rw.env.check(92^rw.env.cpcount)
        end ,
        -1,
        9827,
        false,
        nil,
        nil,
        nil,
        true,

    }

end

return rw
