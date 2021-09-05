require "pry"
def word_display(string)
  letters_array = string.split("")
  result = []
  letters_array.each do |char|
    if char != " "
      result << "_ "
    else
      result << "  "
    end
  end
  puts ""
  result.each do |letter|
    print letter
  end
  puts ""
  puts ""
end
  
  
  word_display("hot sauce")