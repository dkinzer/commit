require 'minitest/autorun'
require './lib/word'

class TestWord < MiniTest::Unit::TestCase
  def setup
    @word = Word.new(" commit! ")
  end

  def test_default_word
    Word.new().word
  end

  def test_size
    assert_equal 32, @word.size
  end

  def test_buffer
    expected = 10
    actual = @word.buffer
    assert_equal expected, actual
  end

  def test_each
    expected = @word.word
    actual  = @word.each {}
    assert_equal expected, actual
  end

  def test_error
    assert_raises NoMethodError do
      Word.new("@")
    end
  end

  def test_to_s
    expected = " commit! "
    actual = @word.to_s
    assert_equal expected, actual
  end
end
