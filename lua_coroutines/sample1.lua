co =
    coroutine.create(
    function(value1, value2)
        local tempvar3 = 10
        print("coroutine section 1:", value1, value2, tempvar3)

        local tempvar1 = coroutine.yield(value1 + 1, value2 + 1)
        tempvar3 = tempvar3 + value1
        print("coroutine section 2:", tempvar1, tempvar2, tempvar3)

        local tempvar1, tempvar2 = coroutine.yield(value1 + value2, value1 - value2)
        tempvar3 = tempvar3 + value1
        print("coroutine section 3:", tempvar1, tempvar2, tempvar3)
        return value2, "end"
    end
)

print("main 1", coroutine.resume(co, 3, 2))
print("main 2", coroutine.resume(co, 12, 14))
print("main 3", coroutine.resume(co, 5, 6))
print("main 4", coroutine.resume(co, 10, 20))

--[[
coroutine section 1:    3       2       10
main 1  true    4       3
coroutine section 2:    12      nil     13
main 2  true    5       1
coroutine section 3:    5       6       16
main 3  true    2       end
main 4  false   cannot resume dead coroutine
]]
