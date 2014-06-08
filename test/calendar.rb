require 'minitest/autorun'
require './lib/calendar'
require 'date'

class TestCalendar < MiniTest::Unit::TestCase
  def setup
    @date = Calendar.new()
  end

  def test_start
    one_year_ago = (DateTime.now - 365).to_date
    first_day = one_year_ago - one_year_ago.wday
    assert_equal first_day, @date.start.to_date
  end

  def test_week_init
    expected = @date.week(7).to_date
    actual = (Calendar.new(7)).current.to_date
    assert_equal expected, actual
  end

  def test_next
    expected = @date.current + 1
    actual = @date.next
    assert_equal expected, actual
  end

  def test_next_365
    expected = @date.start + 365
    365.times {@date.next}
    actual = @date.current
    assert_equal expected, actual
  end

  def test_week
    expected = @date.start + 21
    actual = @date.week(3)
    assert_equal expected, actual
  end

  def test_week_beginning
    expected = 0
    actual = @date.week(3).wday
    assert_equal expected, actual
  end

end

