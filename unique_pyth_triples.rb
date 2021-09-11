def unique_pythagorean_triples_upto(max)
  unique_pyth_triples = []
  for a in 2...(max - 1)
    for b in (a + 1)...max
      c = Math.sqrt(a * a + b * b)
      # c = Math.hypot(a, b)
      if c.floor == c && c < max
        is_unique = true
        current_triple = [a, b, c.to_i]
        for i in 0...(unique_pyth_triples.length - 1)
          factor = current_triple[0].to_f / unique_pyth_triples[i][0]
          if (factor.floor == factor &&
              current_triple[0] / unique_pyth_triples[i][0] == factor &&
              current_triple[1] / unique_pyth_triples[i][1] == factor &&
              current_triple[2] / unique_pyth_triples[i][2] == factor)
            is_unique = false
          end
        end
        unique_pyth_triples << current_triple unless is_unique == false
      end
    end
  end
  puts "There are #{unique_pyth_triples.length} unique pythagorean triples under #{max}:"
  unique_pyth_triples
end

pp unique_pythagorean_triples_upto(100)
