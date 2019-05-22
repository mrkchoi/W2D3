# my_uniq
def my_uniq(arr)
  output = []

  arr.each do |el|
    output << el unless output.include?(el)
  end
  
  output
end


# two_sum
class Array
  def two_sum
    pairs_arr = []

    (0...self.length - 1).each do |i|
      (i+1...self.length).each do |j|
        pairs_arr << [i,j] if (self[i] + self[j] == 0)
      end
    end
    
    pairs_arr
  end
end

#my_transpose
def my_transpose(arr)
  output_arr = Array.new(arr.length) {Array.new(arr.length) {0}}

  (0...arr.length).each do |i|
    (0...arr.length).each do |j|
      output_arr[j][i] = arr[i][j]
    end
  end

  output_arr
end

