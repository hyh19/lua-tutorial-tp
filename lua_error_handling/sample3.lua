function myfunction()
    n = n / nil
end

function myerrorhandler(err)
    print("ERROR:", err)
end

status = xpcall(myfunction, myerrorhandler)
print(status)

--[[
$ lua sample3.lua
ERROR:  sample3.lua:2: attempt to perform arithmetic on global 'n' (a nil value)
false
]]
