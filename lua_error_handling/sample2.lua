function myfunction()
    n = n / nil
end

if pcall(myfunction) then
    print("Success")
else
    print("Failure")
end

--[[
$ lua sample2.lua
Failure
]]
