require 'fileutils'

class Filer
  def add_line line
    File.open('mock.txt', 'a') {|file|
      file.puts line
    }
  end
end
