require './players.rb'
require './questions.rb'

def scroll_text(inputText)
  chars = inputText.split('')
  chars.each { |c|
    sleep 0.025
    print c
  }
  puts "\n"
end

def setup_question(player)
  scroll_text("#{player.name}, please answer the following:")
  question = Question.new
  result = question.enter_answer

  if (result)
    player.score += 1
  else
    player.lives -= 1
  end
end

def game_intro 
  scroll_text("GAMERS, ARE YOU READY?")
  puts "-------------------------------------------------------------------"
  sleep 0.75
  scroll_text("Welcome to the bone-chilling terror of...")
  sleep 0.75
  puts "-------------------------------------------------------------------"
  puts "                   __  .__                                         " 
  puts "     _____ _____ _/  |_|  |__          _________    _____   ____    " 
  puts "    /     \\\\__  \\\\   __\\  |  \\        / ___\\__  \\  /     \\_/ __ \\   " 
  puts "    |  Y Y  \\/ __ \\|  | |   Y  \\     / /_/  > __ \\|  Y Y  \\  ___/  "  
  puts "    |__|_|  (____  /__| |___|  /_____\\___  (____  /__|_|  /\\___  > "  
  puts "          \\/     \\/          \\/_____/_____/     \\/      \\/     \\/  "  
  puts "-------------------------------------------------------------------"
  system('say "math game"')
end

game_intro

scroll_text("Player 1, what's your handle?")
player1 = Player.new
player1.get_name

scroll_text("Player 2, what do you go by?")
player2 = Player.new
player2.get_name

scroll_text("Setting up the game...")
puts "-------------------------------------------------------------------"

while (player1.lives > 0 && player2.lives > 0) do
  setup_question(player1)

  setup_question(player2)
  
  puts "-------------------------------------------------------------------"
  puts "#{player1.name} | lives: #{player1.lives} | score: #{player1.score}"
  puts "#{player2.name} | lives: #{player2.lives} | score: #{player2.score}"
  puts "-------------------------------------------------------------------"
end

winner = ""

if player1.score > player2.score
  winner = player1
elsif player2.score > player1.score
  winner = player2
else
  scroll_text("CONGRATULATIONS! It's a tie!")
  exit(0)
end

puts "-------------------------------------------------------------------"
scroll_text("#{winner.name} IS TRIUMPHANT WITH A SCORE OF #{winner.score} AND #{winner.lives} CHANCES REMAINING!")
scroll_text("ALL HAIL #{winner.name}!!!!!!!!")
puts "-------------------------------------------------------------------"
puts "                                                                                                    "    
puts "    ________    _____      _____  ___________ ____________   _________________________          "
puts "   /  _____/   /  _  \\    /     \\ \\_   _____/ \\_____  \\   \\ /   /\\_   _____/\\______   \\  "
puts "  /   \\  ___  /  /_\\  \\  /  \\ /  \\ |    __)_   /   |   \\   Y   /  |    __)_  |       _/     "
puts "  \\    \\_\\  \\/    |    \\/    Y    \\|        \\ /    |    \\     /   |        \\ |    |   \\ "
puts "   \\______  /\\____|__  /\\____|__  /_______  / \\_______  /\\___/   /_______  / |____|_  /      "
puts "          \\/         \\/         \\/        \\/          \\/                 \\/         \\/      "
puts "                                                                                                    "    




exit(0)

