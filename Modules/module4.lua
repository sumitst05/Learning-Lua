-- Sample 4: Reloading Modules

local module4 = {}

function module4.publicFunction()
  print("This is a public function.")
end

-- Function to reload the module
function module4.reloadModule()
  package.loaded["module4"] = nil  -- Remove the module from the package.loaded table
  io.write("Reload successfull!")
  return require("module4")        -- Load the module again
end

return module4

