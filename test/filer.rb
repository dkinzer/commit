require 'minitest/autorun'
require './lib/filer'

class TestFiler < MiniTest::Unit::TestCase
  def setup
    @filer = Filer.new
  end

  def test_mock_file
    assert File.open('mock.txt'), "A mock.txt file is available."
  end

  def test_add_line
    expected =  line_numbers + 1
    @filer.add_line "A change."

    actual =  line_numbers
    assert_equal expected, actual
  end

  def line_numbers
    File.open('mock.txt', 'r').reduce(0) {|c, line| c + 1}
  end
end

