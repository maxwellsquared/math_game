class Player
  attr_accessor :name, :lives, :score

  def initialize()
    @lives = 3
    @name = "Player"
    @score = 0
  end

  def get_name
    puts "Enter player name: "
    print "> "
    @name = $stdin.gets.chomp
    puts "Good luck, #{@name}!"
  end
end