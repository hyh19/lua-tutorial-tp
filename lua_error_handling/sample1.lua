local function add(a, b)
    assert(type(a) == "number", "a is not a number")
    assert(type(b) == "number", "b is not a number")
    return a + b
end

add(10)

--[[
$ lua sample1.lua
lua: sample1.lua:3: b is not a number
stack traceback:
        [C]: in function 'assert'
        sample1.lua:3: in function 'add'
        sample1.lua:7: in main chunk
        [C]: in ?
]]
