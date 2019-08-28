def biggest_gain(array)
    maximum_profit=0
    minimum_price=array[0]
    for i in 0..array.length-1 do 
        if array[i] < minimum_price
            minimum_price=array[i]
        else
            current_profit = array[i] -minimum_price
            if current_profit > maximum_profit
                maximum_profit = current_profit
            end
        end
    end
    maximum_profit
end

biggest_gain([7, 1, 5, 3, 6, 4])
biggest_gain([7, 6, 4, 3, 1])