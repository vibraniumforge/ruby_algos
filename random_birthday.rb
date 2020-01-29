# how can we handle the different number of days in a month?
require "pry"
def random_birthday
  year = rand(1900..2019)
  months_array = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
  month = months_array[rand(1..12)-1]
  # or rand(0..11)
  case
    when month == 2 && (year % 4 == 0 && year % 400 == 0)
      # year 2000 is NOT a leap year! Every 400 years, the leap year does not happen.
      # puts "leap but not leap"
      day = rand(1..28)
    when month == 2 && (year % 4 == 0 && year % 400 != 0)
      # 1996, 2004 etc. This IS a leap year, and needs 29 days.
      # puts "leap year"
    when month == 2 && (year % 4 != 0)
      # 1999. Not a leap year.
      # puts "not leap"
      day = rand(1..28)
    when [1,3,5,7,8,10,12].any?(month)
      day = rand(1..31)
      # notice that, like with FizzBuzz, if we put the February exceptions below these last two elsif blocks, the February logic will never hit
    when [1,3,5,7,8,10,12].none?(month)
      day = rand(1..30)
    else
      "Error"
  end
  p "The #{day} of #{month} in #{year}"
end


def test
  10.times do
    random_birthday
  end
end

test

# way with if/elsif comditionals

  # if month == 2 && (year % 4 == 0 && year % 400 == 0)
  #   # year 2000 is NOT a leap year! Every 400 years, the leap year does not happen.
  #   # puts "leap but not leap"
  #   day = rand(1..28)
  # elsif month == 2 && (year % 4 == 0 && year % 400 != 0)
  #   # 1996, 2004 etc. This IS a leap year, and needs 29 days.
  #   # puts "leap year"
  #   day = rand(1..29)
  # elsif month == 2 && (year % 4 != 0)
  #   # 1999. Not a leap year.
  #   # puts "not leap"
  #   day = rand(1..28)
  # elsif [1,3,5,7,8,10,12].any?(month)
  #   day = rand(1..31)
  #   # notice that, like with FizzBuzz, if we put the February exceptions below these last two elsif blocks, the February logic will never hit
  # elsif [1,3,5,7,8,10,12].none?(month)
  #   day = rand(1..30)
  # else
  #   p "Error"
  # end
#   p "The #{day} of #{month} in #{year}"
# end


