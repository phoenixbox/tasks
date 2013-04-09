require 'minitest/autorun'
require 'minitest/pride'
require_relative './js_exp_say1'

class SayTest < MiniTest::Unit::TestCase
  def test_zero
    assert_equal 'zero', Say.new(0).in_english
  end

  def test_one
    assert_equal 'one', Say.new(1).in_english
  end

  def test_fourteen
    # If your algorithm says 'ten-four'
    # you're doing it wrong
    assert_equal 'fourteen', Say.new(14).in_english
  end

  def test_twenty
    # This really shouldn't be twenty-zero
    assert_equal 'twenty', Say.new(20).in_english
  end

  def test_twenty_two
    assert_equal 'twenty-two', Say.new(22).in_english
  end

  def test_lower_bound
    assert_raises ArgumentError do
      Say.new(-1).in_english
    end
  end

  def test_upper_bound
    assert_raises ArgumentError do
      Say.new(100).in_english
    end
  end
end