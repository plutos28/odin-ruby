require_relative '../stock_picker.rb'

RSpec.describe "Stock Picker" do

  describe "profits of numbers" do
    it "gets the profit of a day and the days after it in array of 3" do
      stocks = [1, 2, 3]

      expect(get_comparisons(stocks)).to eq([[nil, {value: 2, profit: 1}, {value: 3, profit: 2}], [nil, nil, {value: 3, profit: 1} ], [nil, nil, nil]])
    end

    it "gets the profit of a day and the days after it in array of 3 with random numbers" do
      stocks = [0, 17, 5]

      expect(get_comparisons(stocks)).to eq([[nil, {value: 17, profit: 17}, {value: 5, profit: 5}], [nil, nil, {value: 5, profit: -12} ], [nil, nil, nil]])
    end
  end

  describe  "pair returner" do
    it "returns the highest profit pair in array of 3" do
      stocks = [1, 2, 3]

      expect(stock_picker(stocks)).to eq([0, 2])
    end

    it "returns the highest profit pair in array of 9" do
      stocks = [17,3,6,9,15,8,6,1,10]

      expect(stock_picker(stocks)).to eq([1, 4])
    end
  end
end
