require 'minitest/autorun'
require './lib/letter'

class TestLetter < MiniTest::Unit::TestCase
  def setup
    @letter = Letter.new
  end

  def test_c
    assert_instance_of(Array, @letter.send(:c))
    assert_instance_of(Array, @letter.send(:c)[0])
  end

  def test_o
    assert_instance_of(Array, @letter.send("o"))
    assert_instance_of(Array, @letter.send(:o)[0])
  end

  def test_m
    assert_instance_of(Array, @letter.send(:m))
    assert_instance_of(Array, @letter.send(:m)[0])
  end

  def test_i
    assert_instance_of(Array, @letter.send(:i))
    assert_instance_of(Array, @letter.send(:i)[0])
  end

  def test_t
    assert_instance_of(Array, @letter.send(:t))
    assert_instance_of(Array, @letter.send(:t)[0])
  end

  def test_space
    assert_instance_of(Array, @letter.send(:space))
    assert_instance_of(Array, @letter.send(:space)[0])
  end
  
  def test_exclamation
    assert_instance_of(Array, @letter.send(:exclamation))
    assert_instance_of(Array, @letter.send(:exclamation)[0])
  end
end
