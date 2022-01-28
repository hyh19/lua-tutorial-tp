-- Stateless Iterators

function square(iteratorMaxCount, currentNumber)
    if currentNumber < iteratorMaxCount then
        currentNumber = currentNumber + 1
        return currentNumber, currentNumber * currentNumber
    end
end

function squares(iteratorMaxCount)
    return square, iteratorMaxCount, 0
end

for i, n in squares(3) do
    print(i, n)
end

--[[
1       1
2       4
3       9
]]
