require 'bundler'
Bundler.require

require_relative 'lib/player'
require_relative 'Board'
require_relative 'BoardCase'
require_relative 'show'


puts "Joueur 1 choisi ton pseudo?"
player_name = gets.chomp

#importation des paramètre joueur 
player1 = Player.new(player_name , "X")

puts "Joueur 2 choisi ton pseudo ?"
player_name2 = gets.chomp

#importation des paramètre joueur 
player2 = Player.new(player_name2 , "Y")


#importation d'un board
board = Board.new
p board

binding.pry

p "end of program"

