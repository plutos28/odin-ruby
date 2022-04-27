require_relative '../bubble_sort.rb'

RSpec.describe "Bubble Sort" do

  describe "sorts with worst case being n-1" do
    it "bubbles up 5 in array [5, 1, 4, 2, 8]" do
      n = [5, 1, 4, 2, 8]

      expect(bubble_sort(n)).to eq([1, 4, 2, 5, 8])
    end

    xit "sorts an array of 2 elements" do
      n = [2, 1]

      expect(bubble_sort(n)).to eq([1, 2])
    end

    it "sorts an array of 3 elements" do
      n = [3, 2, 1]

      expect(bubble_sort(n)).to eq([1, 2, 3])
    end

    xit "sorts an array of 5 elements" do
      n = [3, 2, 9, 6, 5]

      expect(bubble_sort(n)).to eq([2, 3, 5, 6, 9])
    end

    xit "sorts an array of 5 elements" do
      n = [5, 1, 4, 2, 8]

      expect(bubble_sort(n)).to eq([1, 2, 4, 5, 8])
    end
  end
end
