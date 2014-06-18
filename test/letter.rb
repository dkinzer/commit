require 'minitest/autorun'
require './lib/letter'

class TestLetter < MiniTest::Unit::TestCase
  def setup
    @letter = Letter.new
  end

  def test_c
    assert_instance_of(Array, @letter.c)
    assert_instance_of(Array, @letter.c[0])
    assert_equal(@letter.c, @letter.C)
  end

  def test_o
    assert_instance_of(Array, @letter.o)
    assert_instance_of(Array, @letter.o[0])
    assert_equal(@letter.o, @letter.O)
  end

  def test_m
    assert_instance_of(Array, @letter.m)
    assert_instance_of(Array, @letter.m[0])
    assert_equal(@letter.m, @letter.M)
  end

  def test_i
    assert_instance_of(Array, @letter.i)
    assert_instance_of(Array, @letter.i[0])
    assert_equal(@letter.i, @letter.I)
  end

  def test_t
    assert_instance_of(Array, @letter.t)
    assert_instance_of(Array, @letter.t[0])
    assert_equal(@letter.t, @letter.T)
  end

  def test_space
    assert_instance_of(Array, @letter.space)
    assert_instance_of(Array, @letter.space[0])
  end
  
  def test_exclamation
    assert_instance_of(Array, @letter.exclamation)
    assert_instance_of(Array, @letter.exclamation[0])
  end
end
