require "pry"
def roman_to_int(s)
  map = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }

  sum = map[s[0]]
  s.chars.each_cons(2) do |c1, c2|
    sum += map[c2]
    puts sum1: sum
    sum -= map[c1] * 2 if map[c1] < map[c2]
    puts sum2: sum
    # binding.pry
  end
  p sum
end

roman_to_int("MCLXXXVIII")