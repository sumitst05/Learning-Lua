-- Local function to add two numbers a and b
local function add(a, b)  -- local functions should have lowercase initial letter
	return a + b
end

local result = add(3, 4)  -- local function call
print(result) -- Output: 7



-- Global function to swap values of two variables 
function Swap(a, b)   -- global functions should have uppercase intitial letter
	return b, a
end

local x = 'a'
local y = 'b'
x, y = Swap(x, y)   -- global function call
print(x .. " " .. y) -- Output: 20    10



-- A function that takes another function as an argument
local function apply(func, p, q)
  return func(p, q)
end

-- Define some functions to use as arguments
-- We have already defined add function
local function subtract(p, q)
  return p - q
end

-- Call the apply function with different functions as arguments
local result1 = apply(add, 10, 20)  -- Calls add(10, 20) and returns 30
local result2 = apply(subtract, 10, 20)  -- Calls subtract(10, 20) and returns -10

print(result1)  -- Output: 30
print(result2)  -- Output: -10



-- Define a function that returns another function
local function makeMultiplier(factor)
  return function(n)
    return n * factor
  end
end

-- Call the makeMultiplier function to create new functions
local double = makeMultiplier(2)  -- Returns a function that multiplies its argument by 2
local triple = makeMultiplier(3)  -- Returns a function that multiplies its argument by 3

-- Use the new functions to multiply some numbers
local result3 = double(10)  -- Calls the function returned by makeMultiplier(2) with argument 10, and returns 20
local result4 = triple(10)  -- Calls the function returned by makeMultiplier(3) with argument 10, and returns 30

print(result3)  -- Output: 20
print(result4)  -- Output: 30

