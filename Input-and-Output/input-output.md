## Input and Output in Lua

Lua provides several functions for input and output operations. These functions are available through the `io` library, which is automatically loaded when a Lua program starts.

#### Standard Input and Output

- In Lua, standard input is referred to as `stdin` and standard output is referred to as `stdout`.

- The `io.read()` function can be used to read data from standard input. By default, `io.read()` reads a line from `stdin` and returns it as a string.

- The `io.write()` function can be used to write data to standard output. By default, `io.write()` writes to `stdout`.

#### File Input and Output

- In addition to standard input and output, Lua also provides functions for reading and writing to files.

- The `io.open()` function can be used to open a file in either read or write mode. The `io.close()` function can be used to close an open file.

- Once a file is opened, data can be read from it using the `file:read()` function, and data can be written to it using the `file:write()` function.

#### String Manipulation

- Lua provides a number of functions for manipulating strings. These include functions for finding substrings, replacing substrings, and formatting strings.

- `string.len(str)`: This function returns the length of the given string str.

- `string.rep(str, n)`: This function returns a new string consisting of n copies of the given string str.

- `string.upper(str)`: This function returns a new string with all the alphabetic characters in the given string str converted to uppercase.

- `string.lower(str)`: This function returns a new string with all the alphabetic characters in the given string str converted to lowercase.

- `string.sub(str, start [,end])`: This function returns a substring of the given string str, starting at the index start and optionally ending at the index end.

- `string.reverse(str)`: This function returns a new string with the characters of the given string str reversed.

- `string.gsub(str, pattern, replace [, n])`: This function performs a global substitution on the given string str, replacing all occurrences of the pattern with the replace string. The n parameter specifies the maximum number of substitutions to perform. The function returns the modified string and the number of substitutions made.
