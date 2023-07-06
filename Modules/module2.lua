-- Module Namespace and Private Functions

local module2 = {}

local function privateFunction()
  print("This is a private function.")
end

function module2.publicFunction()
  privateFunction()
  print("This is a public function.")
end

return module2

