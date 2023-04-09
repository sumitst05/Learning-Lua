-- string length
local str = "Hello, world!"
print("Length of the string is:", string.len(str))

-- string repetition
local str2 = "abc"
print(string.rep(str2, 3))

-- string uppercase
local str3 = "hello"
print(string.upper(str3))

-- string lowercase
local str4 = "WORLD"
print(string.lower(str4))

-- string substring
local str5 = "Hello, world!"
print(string.sub(str5, 1, 5))

-- string reverse
local str6 = "Hello, world!"
print(string.reverse(str6))

-- string pattern matching and substitution
local str7 = "Lua is a powerful language"
local newstr, count = string.gsub(str7, "a", "A")
print(newstr, count)

