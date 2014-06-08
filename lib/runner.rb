require './lib/calendar'
require './lib/filer'
require './lib/word'
require './lib/committer'

class Runner
  attr_reader :word
  attr_reader :filer
  attr_reader :date
  attr_reader :committer

  def initialize w = 'commit!!!'
    @word = Word.new(w)
    @filer = Filer.new()
    @date = Calendar.new()
    @committer = Committer.new()
  end

  def run
    @committer.reset
    @word.each{|commit|
      if commit == 1
        20.times {
          @filer.add_line "A change."
          @committer.add
          @committer.commit @date.current
        }
      end
      @date.next
    }
  end

end
