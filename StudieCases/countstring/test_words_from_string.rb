require_relative 'countstring'
require 'test/unit'

class TestWordsFromString < Test::Unit::TestCase
  def test_empty_string
    assert_equal([], words_from_string(""))
    assert_equal([], words_from_string("  "))
  end


  def test_single_word
    assert_equal(["cat"], words_from_string("cat"))
    assert_equal(["cat"], words_from_string("  cat  "))
  end

  def test_many_word
    assert_equal(["cat", "dog"], words_from_string("cat dog"))
  end

  def test_ignores_ponctuation
    assert_equal(["the", "cat's", "mat"],
      words_from_string("<the!> cat's, -mat"))
  end
end
