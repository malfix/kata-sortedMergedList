require_relative "sorted_merged_list_kata"
require "test/unit"

class TestSortedMergedListKata < Test::Unit::TestCase
  def test_empty
    assert_equal([], SortedMergedListKata.new().sortit() )
    assert_equal([], SortedMergedListKata.new().sortit([]))
    assert_equal([], SortedMergedListKata.new().sortit([[]]))
    assert_equal([], SortedMergedListKata.new().sortit([[],[]]) )
  end

  def test_one_element
    assert_equal([1], SortedMergedListKata.new().sortit([[],[1]]) )
    assert_equal([1], SortedMergedListKata.new().sortit([[1]]) )
  end

  def test_different_size
    assert_equal([1, 1, 1, 3, 5, 10, 20, 30, 40], SortedMergedListKata.new().sortit([[1], [1, 3, 5], [1, 10, 20, 30, 40]]) )
  end

  def test_same_size
    assert_equal([10, 12, 15, 15, 17, 20, 20, 30, 32], SortedMergedListKata.new().sortit([[10, 15, 30], [12, 15, 20], [17, 20, 32]]) )
  end


end
