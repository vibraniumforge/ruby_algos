require "pry"
def isParagram(str)
  visited = {}
  i = 0
  while(str[i] != nil)
      if(str[i].match(/[A-Za-z]/))
        # binding.pry
        if(visited[str[i]])
          visited[str[i]] += 1
        else
          visited[str[i]] = 1
        end
      end
      i +=1
  end
  puts visited.length
  puts visited
end
str1 = "the quick brown fox jumps over the lazy dog"
str2 = "the quick brown fox jumps over the dog"

isParagram(str2)