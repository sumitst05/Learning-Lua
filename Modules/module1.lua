-- Module Tables and Initialization

local module1 = {}

function module1.init()
  print("Module initialized.")
end

function module1.publicFunction()
  print("This is a public function.")
end

local privateVariable = "This is a private variable."

return module1

