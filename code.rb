require "Colorize"


def log(type_error)



  x = File.open("log.txt","a")
  x << type_error
  x << "\n\n"


end

def main

  if ARGV[2]
    puts "You cannot have more than 2 ARGV Inputs"
    exit
  end


  begin
    file = ARGV[0]
    needle = ARGV[1]

  rescue TypeError

      log("TypeError")

      puts "ARGV:: Cannot load file"
      puts "ARGV:: Needle cannot be nil"

      exit
  end
  haystack = read_file(file)
  needle_length = indices(needle, haystack)
  print_highlighted_text(haystack, needle_length)
end

def read_file(file)
  read = ""
  begin

    File.open(file,"r").each do |line|
    read += line
    end
  rescue Errno::ENOENT
    log("Errno::ENOENT")
    puts "Could not find file"
    exit
  rescue TypeError
    log("TypeError")
    puts "No file entered"
    exit
  end

  return read
end

def indices(needle, haystack)



  i = 0
  begin
    to = needle.length - 1
  rescue NoMethodError
    log("NoMethodError")
    puts haystack
    print "\n\n(ERROR) No needle entered"
    exit
  end
  part = nil
  where = Array.new


  while i < haystack.length
    part = haystack[i, needle.length]

    if part == needle
      where << i

      set = i + 1
      j = 1

      while j < needle.length

        where << set
        set += 1
        j += 1
      end

    end
    i += 1

  end

  return false if where.empty?

  return where
end

def print_highlighted_text(haystack, needle_length)

  i = 0
  j = 0
  while i < haystack.length

    begin

      unless i == needle_length[j]
        print haystack[i]
      else
        print haystack[i].on_red
        j += 1
      end

    rescue NoMethodError
      log("NoMethodError")
      puts haystack
      exit
    end
    i += 1
  end
end

main
