-- Submodules and Module Hierarchy

local module3 = {}

module3.submodule = {}

module3.submodule.publicFunction = function()
  print("This is a function from the submodule.")
end

return module3

