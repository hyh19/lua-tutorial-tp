-- Base class
Shape = {area = 0}

-- Base class method new
function Shape:new(o, side)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    side = side or 0
    o.area = side * side
    return o
end

-- Base class method printArea
function Shape:printArea()
    print("The area is ", self.area)
end

-- Creating an object
myshape = Shape:new(nil, 10)
myshape:printArea() --> The area is     100

Square = Shape:new()

-- Derived class method new
function Square:new(o, side)
    o = o or Shape:new(o, side)
    setmetatable(o, self)
    self.__index = self
    return o
end

-- Derived class method printArea
function Square:printArea()
    print("The area of square is ", self.area)
end

-- Creating an object
mysquare = Square:new(nil, 10)
mysquare:printArea() --> The area of square is   100

Rectangle = Shape:new()

-- Derived class method new
function Rectangle:new(o, length, breadth)
    o = o or Shape:new(o)
    setmetatable(o, self)
    self.__index = self
    o.area = length * breadth
    return o
end

-- Derived class method printArea
function Rectangle:printArea()
    print("The area of Rectangle is ", self.area)
end

-- Creating an object
myrectangle = Rectangle:new(nil, 10, 20)
myrectangle:printArea() --> The area of Rectangle is        200
