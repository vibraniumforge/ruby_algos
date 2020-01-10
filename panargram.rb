# How can we see if an input has every letter of the alphabet? My way is the following
# I will create an array of an alphabet. Then, I will loop through an input string. 

# If the input_array is less than 26 letters long, then return false. 
# If a letter of ths string is in the alphabet array, I will delete that letter from the alphabet array. If, at the end, the alphabet array is length zero, then return true. Else false.

def is_panagram(string)
  alphabet_array = "abcdefghijklmnopqrstuvwxyz".split("")
  # .split creates an array of the alphabet, one letter in each index.
  input_array = string.split("")
  # create an array of the input string. Same as above.
  if input_array.size < 26
    puts "#{string} is too short to be a panagram"
    return false
    # return false for too short inputs
  end
  input_array.each do |letter|
    index = alphabet_array.index(letter.downcase)
    # loop through the input string. find the index in the alphabet array of a letter in the string. Make sure to downcase to take care of capital letters.
    if !index.nil?
      alphabet_array.delete_at(index)
      # if the index exists, delete what is there.
    end
  end
  print alphabet_array
  # show what is left at the end
  puts ""
  puts "VERDICT:"
  print string
  puts ""
  puts "is a panagram?"
  # is the array greater length zero? Then it is a panagram!
  alphabet_array.length == 0 ? true : false
end


puts is_panagram("The uick brown fox jumps over the lazy dog")
# missing 'q'
# false
puts is_panagram("The quick brown fox jumps over the lazy dog")
# true
puts is_panagram("hello world")
# false