def stock_picker(arr)
  result = Array.new(2,0)
  delta = Array.new
  delta << arr[1] - arr[0]
  arr.each_with_index do |price_buy,day_buy|
    arr.each_with_index do |price_sell,day_sell|
      if (day_sell > day_buy && price_sell - price_buy > delta.max())
        delta << price_sell - price_buy
        result[0] = day_buy
        result[1] = day_sell
      end

    end 
  end
  puts result
end

stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]
stock_picker([2,3,6,9,15,17,8,19,1,10])
# => [0,7]

