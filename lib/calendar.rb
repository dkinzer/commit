require 'date'

class Calendar
  attr_reader :start
  attr_reader :current

  def initialize start = DateTime.now - 365
    if start.class == Fixnum
      weeks = start
      start = DateTime.now - 365
    else
      weeks = 0
    end

    first_day = start - start.wday
    @start= first_day
    @current = @start
    week weeks.to_f
  end

  def next
    @current = @current.next
  end

  def week number
    @current = @start + (7 * number)
  end

end
