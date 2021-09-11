def pythagorean_triples(maxHypotenuse)
  finalArray = []
  3.upto(maxHypotenuse) do |a|
    (a + 1).upto(maxHypotenuse) do |b|
      c = Math.sqrt(a ** 2 + b ** 2)
      finalArray << [a, b, c.to_i] if c % 1 == 0 && c < maxHypotenuse
    end
  end
  puts "There are #{finalArray.length} pythagorean triples under #{maxHypotenuse}:"
  p finalArray
end

pythagorean_triples(100)
