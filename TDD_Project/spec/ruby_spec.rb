require 'ruby'

RSpec.describe Array do
  describe "#my_unique" do
    it 'returns new array with no duplicates' do
      expect([1,2,1,3,2].my_unique).to eq([1,2,3])
    end
  end

  describe "two_sum" do
    it 'finds all pairs of positions where the elements at those positions sum to zero' do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]]) 
    end
  end

  describe "my_transpose" do
    it 'transposes an array' do
      expect([[0, 1, 2],[3, 4, 5],[6, 7, 8]].my_transpose).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]]) 
    end
  end

  describe "stock_finder" do
    it 'decides optimal pair of days of trade' do
      expect([50, 300, 200, 75, 100].stock_finder).to eq([0, 1]) 
    end
  end
end

