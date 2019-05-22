require 'byebug'

class Array
  def my_unique
    unique_arr = []
    self.each { |ele| unique_arr << ele unless unique_arr.include?(ele)}
    unique_arr
  end

  def two_sum
    indices = []
    self.each_with_index do |ele1, idx1|
      self.each_with_index do |ele2, idx2|
        if idx2 > idx1 && ele1 + ele2 == 0
          indices << [idx1, idx2]
        end
      end
    end
    indices
  end

  def my_transpose
    array = self
    new_array = []
   
    i = 0
    while i < array.length
      j = 0
      sub_array = []
      while j < array.length
        sub_array << array[j][i]
        j += 1
      end
      new_array << sub_array
      i += 1
    end
    new_array
  end

  def stock_finder
    differences = []
    i = 0
    while i < self.length-1
      diff = self[i+1] - self[i]
      differences << diff
      i += 1
    end
    return [differences.index(differences.max), differences.index(differences.max)+1]
  end
  
end