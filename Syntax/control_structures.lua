-- if-else statement
local a = 10
print("Checks whether a is b/w 5 and 15")
if a < 5 then
	print("a is less than 5")
elseif a > 15 then
	print("a is greater than 15")
else
	print("a is between 5 and 15")
end

print("\nPrints 1 to 10 using while loop")
-- while loop
local b = 1
while b <= 10 do
	io.write(b .. " ")
	b = b + 1
end
print()

print("\nPrints 1 to 10 using repeat-until loop")
-- repeat-until loop
local c = 1
repeat
	io.write(c .. " ")
	c = c + 1
until c > 10
print()

print("\nPrints 1 to 10 using for loop")
-- for loop
for i = 1, 10 do
	io.write(i .. " ")
end
print()

print("\nbreaks the loop at 5")
-- break statement
for i = 1, 10 do
	if i == 5 then
		break
	end
	io.write(i .. " ")
end
print()

print("\nPrints 1 to 10 skipping 5")
-- continue statement
for i = 1, 10 do
	if i == 5 then
		goto continue
	end
	io.write(i .. " ")
	::continue::
end
print()

