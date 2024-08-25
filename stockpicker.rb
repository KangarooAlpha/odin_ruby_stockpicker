def stock_picker(arr)
  days = [0,0] 
  best = 0
  arr.each_with_index do |left,left_i|
    arr.each_with_index do |right,right_i|
      if left_i < right_i 
        profit = right - left
        if best < profit
          best = profit
          days = [left_i, right_i]
        end
      end
    end
  end
  p days
end  

stock_picker([1,2,3,4,5,6,7,8,9,0])
stock_picker([17,3,6,9,15,8,6,1,10])