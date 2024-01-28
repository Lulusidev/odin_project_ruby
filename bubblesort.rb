def swap(arr,i1,i2)
  temp=0
  temp = arr[i1]
  arr[i1] = arr[i2]
  arr[i2] = temp

  return arr
end

def bubblesort(arr)
  is_swap = true
  while is_swap
    is_swap = false
    
    (arr.length - 1).times do |j|
      if (arr[j]>arr[j+1])
        swap(arr,j,j+1)
        is_swap = true
      end
    end
  end
    #for i in (index..arr.length)
    #  if arr[i] > element
    #end
    #arr.each do |elementi|
    #  if element > elementei
  arr
end  

p = [9,2,3,5,4,7,1]
bubblesort(p)
