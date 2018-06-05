class SortedMergedListKata

  def initialize
  end

  def sortit(*arrays)
    return [] if (arrays.nil? || arrays.size == 0)
    next_index = [0] * arrays[0].size
    sorted_list = []
    while(true) do
      idx_lower = pick_lower_element_idx(arrays, next_index)
      if idx_lower
        sorted_list << arrays[0][idx_lower][next_index[idx_lower]]
        next_index[idx_lower] += 1
      else
        return sorted_list
      end
    end
    return sorted_list
  end

  private
  def pick_lower_element_idx(arrays, next_index)
    next_lower = nil
    arrays[0].each_with_index do |original_list, idx|
      if next_index[idx] && original_list[next_index[idx]]
        next_lower = idx if next_lower.nil?
        if arrays[0][next_lower][next_index[next_lower]] > original_list[next_index[idx]]
          next_lower = idx
        end
      end
    end
    next_lower
  end

end
