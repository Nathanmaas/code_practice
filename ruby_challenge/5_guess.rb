def guessing
number = rand(1..100)
inputNumber = -1
tries = -1
# puts "Guess a number between 1 and 100"
hi = 101
low = 0
computer_guess = (hi - low)/2

while(computer_guess != number) do
        if(number < computer_guess)
            # puts "The number is lower than #{computer_guess}"
            hi = computer_guess
            computer_guess = (hi + low)/2
        elsif(number > inputNumber)
            # puts "The number is higher than #{computer_guess}"
            low = computer_guess
            computer_guess = (hi + low)/2
        end
    tries += 1
    end
    return tries
end

totalTries = 0
1000000.times do
  totalTries += guessing
end

puts "Average #{totalTries/1000000.00} tries."

# puts "You got it in #{tries} tries."

# The most straight forward way to guess this number is start
# at the bottom and keep guessing until it reaches the number
#   -but this isn't very efficient bc it could take 100 tries.
#     so this method runs n times

# The other way is to decrease this by a factor of alot - thus
# binary search - divide and conquer - start in the middle and
# go both ways.  cuts the array in half and divides it again
# bc our goal is to know higher or lower and then go fast from
# there.  it selects where its at and cuts everything higher or
# lower off.  continuous dividing in half.

# http://rosettacode.org/wiki/Binary_search

# http://bigocheatsheet.com/