def stock_picker(prices)
    unless prices.length >1
        return nil
    end

    left = 0
    right = prices.length - 1

    min_left = left
    max_right = right

    while left < right
        left += 1
        # puts "#{prices[left]} #{prices[min_left]}"
        if prices[left] < prices[min_left]
            min_left = left
        end
        right -= 1
        # puts "#{prices[right]} #{prices[max_right]}"
        if prices[right] > prices[max_right]
            max_right = right
        end
    end

    if min_left > max_right
        nil
    else
        [min_left, max_right]
    end

end