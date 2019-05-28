def merge_sort(arr)
    return arr if arr.length < 2
    left_arr = merge_sort(arr[0...(arr.length/2)])
    right_arr = merge_sort(arr[(arr.length/2)..-1])
    new_arr = []
    while left_arr.length != 0 && right_arr.length != 0 do
        if left_arr[0]>right_arr[0]
            new_arr<<right_arr[0]
            right_arr.shift
        else
            new_arr<<left_arr[0]
            left_arr.shift
        end
    end
    return new_arr + left_arr + right_arr
end

puts merge_sort([33,8,6,25,9,15,9,4,11])