dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(st ,arr)
  st.downcase!
  result = Hash.new(0)
  
  arr.each do |word|
    result[word] +=1 if st.include?(word)
  end

  result
end
  
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
