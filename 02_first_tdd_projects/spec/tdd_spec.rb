require 'rspec'
require 'tdd'

RSpec.describe do


  describe '#my_uniq' do 
    it "remove duplicate elements from an array" do
      expect(my_uniq([1,1,2,2,3,3])).to eq([1,2,3])
    end

    it "returns the unique elements in the order in which they first appeared" do
      expect(my_uniq([1,1,2,2,3,3])).to eq([1,2,3])
    end

    it "should return a new array" do
      a = [1,1,2,2,3,3]
      expect(my_uniq(a)).to_not be(a)
      expect(my_uniq(a)).to be_an(Array)
    end
  end

  describe '#two_sum' do
    let(:a) { [-1,0,2,-2,1] }

    it 'returns a 2D array of position pairs that sum to zero' do
      expect(a.two_sum).to eq([[0, 4], [2, 3]])
    end

    it 'returns pairs with smaller first elements coming first' do
      expect(a.two_sum).to eq([[0, 4], [2, 3]])
      expect(a.two_sum).not_to eq([[2, 3],[0, 4]])
    end
  end
  
  describe '#my_transpose' do
    let(:a) {[[0, 1, 2],
              [3, 4, 5],
              [6, 7, 8]]}
    it 'returns a new array' do
      expect(my_transpose(a)).to_not be(a)
      expect(my_transpose(a)).to be_an(Array)
    end

    it 'converts between row oriented and column oriented representations' do
      expect(my_transpose(a)).to eq ([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end
  end

end