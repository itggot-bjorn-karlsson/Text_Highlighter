# Log: This logs the type error to a text file.
#
# Local var
#
# x - Class File, this will store all the logs
# type_error - Class String, contains the error message
#
# Examples
#
# Log(Errno::ENOENT)
#
# log.txt # => "Errno::ENOENT"
#
# Does not return anything
#
#-------------------------------------------------------------------------------------------
#
# Main: This function is for starting the program. It's the main function
#
# (Ignoring rescues in code)
#
# Local Var
#
# file - Class String, Takes an input from ARGV's first position (0)
# needle - Class String, Takes an input from ARGV's second position (1)
# haystack - Class String, Takes return value from method (read_file())
# needle_length - Class Array, Takes return value from method (indices())
#
# Methods
#
# read_file() - Returns a String from a file entered from local var (file)
# needle_length() - Returns a Array from all needle position in haystack
# print_highlighted_text() - prints the position on every needle in haystack, with color
#
# --------------------------------------------------------------------------------------
#
# read_file(file): This function takes 1 argument as a string, the argument must be a path to a file or a local file to be executed
#
# (Ignoring rescues in code)
#
# Local Var
#
# read - Class String, stores the strings from the chosen file
# line - Class String in each loop, this is the value that will be added to the read string, value taken from File
#
# Examples
#
# File.open(file,"r").each do |line|
#   read += line
# end
#
# Returns read
#
# ------------------------------------------------------------------------------------------------------
#
# Indices(needle, haystack): This function takes 2 String arguments, Needle is what you are searching for, Haystack is the whole string from the file we entered in ARGV[0]
#
# (Ignoring rescues in code)
#
# Local Var
#
# i - Class Integer, the index var
# part - Class Nil, this will take a part from the haystack, this will be checked later on
# where - Class Array, this array will store any found objects (strings) in haystack
#
# set - Class Integer, This integer will be the setter of a while loop, the value of this will or will not be stored in the where array.
# j - Class integer, Thex second index var
#
#
# while i < haystack.length
#   part = haystack[i, needle.length]
#
#   If part found needle
#      set = i + 1
#      while j < needle.length
#
#         where << set
#
#         j, set += 1
#      end
#
#    end
# end
#
#
# -------------------------------------------------------------------------------------------------------------------------------------------
#
# print_highlighted_text(haystack, needle_length): This function will print the index of all needle_length values in haystack with a color, this function returns nothing
#
#
# (Ignoring rescues in code)
#
# Local var
#
# i,j - Class Integer, the loop vars.
#
# if a match was found in (unless (i == needle_length[j])) then we will print the position in haystack with a color
#
# example:
#
# Print "This".green
# => This (With green color)
#
