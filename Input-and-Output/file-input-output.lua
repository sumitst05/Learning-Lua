-- FIlE INPUT / OUTPUT
-- Open the file in read mode
local file1 = io.open("top_secret.txt", "r")

-- Check if the file was opened successfully
if file1 then
  -- Read the contents of the file
  local contents = file1:read("*all")

  -- Print the contents of the file
  print(contents)

  -- Close the file
  file1:close()
else
  -- Print an error message if the file could not be opened
  print("Could not open file!")
end

-- Open the file in write mode
local file2 = io.open("example.txt", "w")

-- Check if the file was opened successfully
if file2 then
  -- Write to the file
  file2:write("This is some text that will be written to the file.")

  -- Close the file
  file2:close()
else
  -- Print an error message if the file could not be opened
  print("Could not open file!")
end


