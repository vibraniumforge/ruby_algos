require "pry"

def pascal(row)
  pascals_triangle = [[1], [1, 1]]
  (2...row).each do |i|
    this_row = [1]
    (0...pascals_triangle[i - 1].length - 1).each do |j|
      this_row << pascals_triangle[i - 1][j] + pascals_triangle[i - 1][j + 1]
    end
    this_row << 1
    pascals_triangle << this_row
  end
  pascals_triangle.each do |x|
    print x
    puts "\n"
  end
  puts "\n"
  pascals_triangle
end

print pascal(6)
