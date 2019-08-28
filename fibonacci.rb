def fibo_print(num)
    a=1
    b=1
    c=a+b
    ar=[a,b,c]
    num.times do
        a=b
        b=c
        c=a+b
        ar<<c
    end
    print "The first #{num} in the Fibonacci series are #{ar}"
    print "\n"
end


# find the number in the Fibonacci series at the corresponding index (zero-indexed)
def fibonacci_number(num)
    a = 1
    b = 1
    c = a + b
    ar = [a, b, c]
    counter = 1
    num.times do
        a = b
        b = c
        c = a + b
        ar << c
        puts "a= #{a}"
        puts "b= #{b}"
        puts "c= #{c}"
        puts "counter= #{counter}"
        puts "the number at position #{counter+2} (zero-indexed) is #{c}"
        puts "==========================================="
        counter +=1
    end
    print ar
    print "\n"
    print "The number in the Fibonacci series at position #{num} is: #{ar[num-1]}"
    print "\n"
end

# fibonacci_number(8)

fibo_print(50)

