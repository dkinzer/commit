class Letter < BasicObject
  # Patterns to avoid duplication.
  P0 = [0, 1, 0, 0, 0, 0, 1]
  P1 = [0, 0, 1, 1, 1, 1, 0]
  P3 = [0, 1, 0, 0, 0, 0, 0]
  P4 = [0, 0, 1, 1, 1, 1, 1]
  P5 = [0, 0, 1, 0, 0, 0, 0]

  C = [P1, P0, P0, P0, [0, 1, 1, 0, 0, 1, 1]]
  O = [P1, P0, P0, P0, P1]
  M = [P4, P3, [0, 0, 1, 1, 0, 0, 0], P3, P4]
  I = [[0, 1, 0, 1, 1, 1, 1]]
  T = [P5, [0, 1, 1, 1, 1, 1, 0], [0, 0, 1, 0, 0, 0, 1], P5]

  def initialize
    @letters = {
      :c => C,
      :o => O,
      :m => M,
      :i => I ,
      :t => T,
      :exclamation => [[0, 1, 1, 1, 1, 0, 1]],
      :space => [[0, 0, 0, 0, 0, 0, 0]],
    }
  end

  def send *args
    if @letters[args[0].to_sym]
      @letters[args[0].to_sym]
    end
  end
end
