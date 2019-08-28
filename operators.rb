def array_num(arr, num1, num2, str)
  arr[num1].method(str).(arr[num2])
end
  
array_num([1,6,9,2,5,7,5,8], 2, 4, '**')


def array_num(arr, num1, num2)
  operators=['+', '-', '*', '/', '**']
  results=[]
  operators.map do |operator|
    results << arr[num1].method(operator).(arr[num2].to_f)
  end
  print results
end
  
array_num([1,6,9,2,5,7,5,8], 2, 4)