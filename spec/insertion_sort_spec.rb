
require_relative '../lib/insertion_sort'

describe "#{}insertion sort"  do 

    let(:basic_array) { [1,3,7,2,5] }
    let(:basic_array_sorted) { [1,3,7,2,5].sort }
    let(:array_negatives) { [1, 2, 3, -1, -2, -3] }
    let(:array_repeated) { [1, 6, 3, 5, 2, 1, 6]}

    it "does basic sort" do 
        expect( insertion_sort( basic_array )).to eq(basic_array_sorted)
    end

    it "sorts with negatives" do
      expect( insertion_sort( array_negatives )).to eq(array_negatives.sort)
    end

    it "sorts with repeated values" do
      expect( insertion_sort( array_repeated )).to eq(array_repeated.sort)
    end
end

