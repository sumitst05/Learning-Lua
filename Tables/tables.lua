-- creating a table
local person = {name = "Sumit", age = 18, gender = "male"}

-- accessing values in the table
print(person.name)    -- output: John
print(person.age)     -- output: 30
print(person.gender)  -- output: male

-- adding a new key-value pair
person.occupation = "programmer"
print(person.occupation)  -- output: programmer

print("\n")


-- creating a table with an array-like structure
local fruits = {"apple", "banana", "orange"}

-- iterating over the table using a for loop
for index, value in ipairs(fruits) do
  print(index, value)
end


print("\n\n")


-- creating a class using a table
local Person = {name = "", age = 0}

-- defining a method for the class
function Person:greet()
  print("Hello, my name is " .. self.name .. " and I am " .. self.age .. " years old.")
end

-- creating an object of the class
local sumit = {name = "Sumit", age = 18}
setmetatable(sumit, {__index = Person})

-- calling the method on the object
sumit:greet()  -- output: Hello, my name is John and I am 30 years old.


print("\n\n")


print("You can also use emojis in lua 😜\n")

local animals = {
   "🐶", -- dog
   "🐱", -- cat
   "🐭", -- mouse
   "🐹", -- hamster
   "🐰", -- rabbit
   "🐻", -- bear
   "🐼", -- panda
   "🦁", -- lion
   "🐮", -- cow
   "🐷", -- pig
   "🐸", -- frog
   "🐵", -- monkey
   "🐔", -- chicken
   "🐦", -- bird
   "🐧", -- penguin
   "🐢", -- turtle
   "🦔"  -- hedgehog
}

-- print the table
for i, animal in ipairs(animals) do
   print(i, animal)
end


