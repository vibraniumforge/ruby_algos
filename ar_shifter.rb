# frozen_string_literal: true

def ar_shifter(arr, num_times)
  new_arr = []
  new_arr.replace(arr)
  num_times.times  { new_arr.unshift(new_arr.pop) }
  puts "#{arr} shifted #{num_times} times is #{new_arr}"
end

ar_shifter([1, 2, 3, 4, 5], 3)
