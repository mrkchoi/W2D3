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

#stock_picker
def stock_picker(stock_prices)
  min = 0
  max = 1
  i = 0
  j = 1

  until j == stock_prices.length - 1
    max = j if stock_prices[j] > stock_prices[max]
    j += 1
  end

  while i < max
    min = i if stock_prices[i] < stock_prices[min]
    i += 1
  end
  
  [min, max]
end

