function Populate_table()
  local t = {} -- create an empty table

  local mt = { -- create a metatable
    -- define the __index metafunction, which is called when a key is accessed in the table
    __index = function(table, key)
      if key == "size" then
        return #table
      elseif key == "sum" then
        local total = 0
        for i=1,#table do
          total = total + table[i]
        end
        return total
      else
        return nil
      end
    end,

    -- define the __newindex metafunction, which is called when a key is set in the table
    __newindex = function(table, key, value)
      if type(value) ~= "number" then
        error("Table values must be numbers")
      else
        rawset(table, key, value)
      end
    end,

    -- define the __add metafunction, which is called when the '+' operator is used with two tables
    __add = function(table1, table2)
      local result = {}
      for i=1,#table1 do
        result[i] = table1[i] + table2[i]
      end
      return result
    end,

    -- define the __sub metafunction, which is called when the '-' operator is used with two tables
    __sub = function(table1, table2)
      local result = {}
      for i=1,#table1 do
        result[i] = table1[i] - table2[i]
      end
      return result
    end,

    -- define the __tostring metafunction, which is called when a table is converted to a string
    __tostring = function(table)
      local str = "{ "
      for i=1,#table do
        str = str .. table[i]
        if i ~= #table then
          str = str .. ", "
        end
      end
      str = str .. " }"
      return str
    end
  }

  setmetatable(t, mt) -- set the table's metatable to the one we just created

  t[1] = 5 -- add values to the table
  t[2] = 10
  t[3] = 15

  -- access the table's size and sum using the __index metafunction
  print("Table size:", t.size)
  print("Table sum:", t.sum)

  -- add two tables using the __add metafunction
  local t2 = {7, 8, 9}
  local t3 = t + t2
  print("Table addition:", t3)

  -- subtract two tables using the __sub metafunction
  local t4 = {2, 3, 4}
  local t5 = t - t4
  print("Table subtraction:", t5)

  -- convert the table to a string using the __tostring metafunction
  print("Table as string:", tostring(t))
end

Populate_table() -- call the function

