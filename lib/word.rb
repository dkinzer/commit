require './lib/letter'

class Word
  attr_reader :word
  attr_reader :buffer
  attr_reader :size

  def initialize word = "commit!!!"
    @string = word.to_s
    set_word word
    set_size
    set_buffer
  end

  def set_word word = "commit!!!"
    letter = Letter.new
    @word = word.split('').reduce([]) {|w, char|
      case char
      when "!"
        c = "exclamation"
      when " "
        c  = "space"
      else
        c = char
      end
      w.push letter.send(c)
      w.push letter.send("space")
    }
    @word.pop
  end

  def set_buffer
    @buffer = (52 - @size)/2
  end

  def set_size
    @size = @word.reduce(0) {|x, letter|
      x = letter.size + x
    }
  end

  def each &block
    @word.each {|char|
      char.each { |c|
        c.each {|d|
          block.call d
        }
      }
    }
  end

  def to_s
    @string
  end

end
