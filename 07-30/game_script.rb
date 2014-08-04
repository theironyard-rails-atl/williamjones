require "./guessing_game" #require says grab this source code and make avialble here

puts "Starting the game"
game = GuessingGame.new

until game.finished?
  print "Enter a guess:"
  number = gets.chomp.to_i
  puts game.guess(number)
end

if game.won?
  puts "You won"
else
  puts "You lost"
end
#J refers to script as something that takes in user input or prints something out.
