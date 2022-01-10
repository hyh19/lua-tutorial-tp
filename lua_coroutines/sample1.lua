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

print("main (1)", coroutine.resume(co, 3, 2))
print("main (2)", coroutine.resume(co, 12, 14))
print("main (3)", coroutine.resume(co, 5, 6))
print("main (4)", coroutine.resume(co, 10, 20))
