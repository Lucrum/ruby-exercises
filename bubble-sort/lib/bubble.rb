def bubble_sort(arr)
    no_swaps = false

    tmp_arr = arr.dup

    until no_swaps
        no_swaps = true
        tmp_arr.each_with_index do |num, index|
            if index < tmp_arr.length - 1 && num > tmp_arr[index + 1]
                tmp_arr[index] = tmp_arr[index + 1]
                tmp_arr[index + 1] = num
                no_swaps = false
            end
        end
    end

    tmp_arr

end