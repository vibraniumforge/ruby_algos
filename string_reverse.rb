require "pry"
def string_reverser(string)
  if string.class == String
    new_string = string.split("").reverse.join("-")
    p new_string
  else
    puts "Error. This is not a string. It is a #{string.class}. Please input a string."
  end
end

string_reverser("Flatiron")
string_reverser("Seattle")
string_reverser("Washington")
string_reverser("Antidisestablishmentartianism")
string_reverser("Supercalifragilisticexpialidocious")
string_reverser("Abcdefghijklmnopqrstuvwxyz")
string_reverser(7)
string_reverser(3.14)
string_reverser(false)
string_reverser([1,2,3,4,5])
string_reverser({"first_name": "Joe"})
string_reverser(:hello)
string_reverser(nil)

