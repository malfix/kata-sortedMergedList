require_relative "sorted_merged_list_kata"
require "test/unit"

class TestSortedMergedListKata < Test::Unit::TestCase
  def test_base
    assert_equal([], SortedMergedListKata.new().sortit([]) )
  end
end
