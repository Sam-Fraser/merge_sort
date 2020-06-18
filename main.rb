#merge_sort method
#on input of n elements
def merge_sort(arr)
  #return n if n < 2
  return arr if arr.length < 2
  #else
    #sort left half
  left_half = merge_sort(arr[0..(arr.length/2)-1])
    #sort right half
  right_half = merge_sort(arr[arr.length/2..arr.length-1])
    #merge the sorted halves
  final_arr = []
  a = 0
  b = 0
  while final_arr.length < arr.length
    if left_half[a].nil?
      final_arr.push right_half[b]
      b += 1
    elsif right_half[b].nil?
      final_arr.push left_half[a]
      a += 1
    elsif left_half[a] < right_half[b]
      final_arr.push(left_half[a])
      a += 1
    else
      final_arr.push(right_half[b])
      b += 1
    end
  end
  final_arr
end

p merge_sort([2,6,3,4,1,7,8,5,6,12,9,32,8,15,0,4,24])