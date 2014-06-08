require 'minitest/autorun'
require './lib/runner'

class TestRunner < MiniTest::Unit::TestCase

  def setup
    @runner = Runner.new
  end

  def test_has_wod
    expected = Word.new("Commit").class
    actual = @runner.word.class
    assert_equal expected, actual
  end

  def test_has_filer
    expected = Filer.new().class
    actual = @runner.filer.class
    assert_equal expected, actual
  end

  def test_has_commiter
    expected = Committer.new().class
    actual = @runner.committer.class
    assert_equal expected, actual
  end

  def test_has_calendar
    expected = Calendar.new().class
    actual = @runner.date.class
    assert_equal expected, actual
  end

end
