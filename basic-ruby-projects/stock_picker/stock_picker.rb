def stock_picker(stocks)
  profit_of_days  = []

  stocks.each_with_index do |stock, index|
    profit = [] 
    stocks.each_with_index do |s, i| 
      if i <= index
        profit.append(nil)
        next
      end
      profit.append({value: s, profit: s - stock})
    end
    profit_of_days.append(profit)
  end

  profit_of_days
end

def display_stocks(stocks)
  stock_picker(stocks).each_with_index do |day, index|
    puts "Day #{index}, Value: #{stocks[index]}"
    day.each_with_index do |profit, i|
      if profit.nil?
        puts "\tDay#{i}: preceeding day"
        next
      end
      puts "\tDay#{i}: #{profit}"
    end  
  end
end

stocks = [17, 3, 6, 9]
display_stocks(stocks)
