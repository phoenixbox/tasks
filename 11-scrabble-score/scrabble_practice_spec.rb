require 'minitest/autorun'
require 'minitest/pride'
require './scrabble_practice.rb'

class ScrabbleTest < MiniTest::Unit::TestCase

  def test_can_take_a_word
    assert_equal "cabbage", Scrabble.new("cabbage").input
  end

  def test_word_is_equal_to_a_score
    assert_equal 14, Scrabble.new("babbage").score
  end

  def test_word_broken_into_array
    assert_equal 5, Scrabble.new("tap").score
  end

  def test_word_dowcased_and_broken_into_array
    assert_equal ["t","a","p"], Scrabble.new("TAP").letters
  end

  def test_word_is_correct_score
    assert_equal 9, Scrabble.new("bowl").score
  end

  def test_double_letter_score
    assert_equal 18, Scrabble.new("bowl").score
  end

end