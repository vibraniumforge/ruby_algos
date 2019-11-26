def random_birthday
  month = rand(1..12)
  year = rand(1900..2019)
  months_ar = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
  month = months_ar[rand(1..12)-1]
  if month == 2
    day = rand(1..28)
  elsif [1,3,5,7,8,10,12].any?(month)
    day = rand(1..31)
  elsif [1,3,5,7,8,10,12].none?(month)
    day = rand(1..30)
  else
    p "Error"
  end
  p "The #{day} of #{month} in #{year}"
end


random_birthday 