def get_comparisons(stocks) 
  comparisons = []

  stocks.each_with_index do |stock, index|
    comparison = [] 
    stocks.each_with_index do |s, i| 
      if i <= index
        comparison.append(nil)
        next
      end
      comparison.append({value: s, profit: s - stock})
    end
    comparisons.append(comparison)
  end
  comparisons 
end

def stock_picker(stocks)
  comparisons = get_comparisons(stocks)  
  sell_days = []

  comparisons.each_with_index do |day, index|
    if day.compact.length.zero?
      sell_days.append(nil)
      next
    end
    best_day = day.compact.max {|a, b| a[:profit] - b[:profit]}
    best_day[:index] = day.find_index(best_day) 
    sell_days.append(best_day)
  end

  sell_day = sell_days.compact.max {|a, b,| a[:profit] - b[:profit]}
  buy_day = sell_days.find_index(sell_day) 
  return [buy_day, sell_day[:index]]
end

stocks = [1, 2, 3]
p get_comparisons(stocks)
p stock_picker(stocks)
