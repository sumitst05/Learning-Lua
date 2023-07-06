-- Update the package path to include the "Modules" directory
package.path = package.path .. ";Modules/?.lua"

-- Modules and Initialization

local myModule1 = require("module1")

myModule1.init()
myModule1.publicFunction()

-- Module Namespace and Private Functions

local myModule2 = require("module2")

myModule2.publicFunction()
-- myModule2.privateFunction() -- This will give an error

-- Submodules and Module Hierarchy

local myModule3 = require("module3")
myModule3.submodule.publicFunction()

-- Reloading Modules

local myModule4 = require("module4")
myModule4.publicFunction()
myModule4.reloadModule()
