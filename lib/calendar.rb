require 'date'

class Calendar
  attr_reader :start
  attr_reader :current

  def initialize start = DateTime.now - 365
    @start = first_day start
    adjust_current start
  end

  def next
    @current = @current.next
  end

  def week number
    @current = @start + (7 * number)
  end

  private

  def adjust_current start
    if start.class == Fixnum
      week start.to_f
    else
      week 0
    end
  end

  def first_day  start
    if start.class == Fixnum
      start = DateTime.now - 365
    end
    start - start.wday
  end
end
