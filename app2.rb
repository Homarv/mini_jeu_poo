require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

#press enter to continue
def continue
  print "\n"
  gets
end


p"------------------------------------------------"
p"|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |"
p"|Le but du jeu est d'être le dernier survivant !|"
p"-------------------------------------------------"

puts "Quel est ton prénom ?"
player_name = gets.chomp

#importation des paramètre joueur 
human_player = HumanPlayer.new(player_name)

#Tableau des ennemies 
players_array = Array.new
player1 = Player.new ("Jessie")
player2 = Player.new ("James")
players_array = [player1,player2]

while human_player.life_points >0 && (player1.life_points > 0 || player2.life_points >0)

  p "Quelle action veux-tu effectuer ?"
  p"-------------------------------------------"
  p "a - chercher une meilleure arme"
  p "s - chercher à se soigner "
  p ""
  p "attaquer un joueur en vue :"
  p "0 - Jessie a #{player1.life_points} points de vie"
  p"1 - James a #{player2.life_points} points de vie"

    user_choice = gets.chomp
  p"-------------------------------------------"
  if user_choice == "a"
      puts "chercher une meilleure arme"
      human_player.search_weapon
    elsif user_choice == "b"
      puts "chercher à se soigner "
      human_player.search_health_pack
    elsif user_choice == "0"
      human_player.attacks(player1)
      puts "Jessie a #{player1.life_points} points de vie"
    elsif user_choice == "1"
      human_player.attacks(player2)
      puts "James a  #{player2.life_points} points de vie"
    else
      puts "Ce n'est pas une valeur correct."
  end

  # message d'attaque si l'un ou les ennemis sont vivant 
  if player1.life_points > 0 || player2.life_points >0
    puts "Les autres joueurs t'attaquent"
  end

  #attaques de l'un ou des deux ennemis selon si ils sont en vie
  players_array.each do |player| 
    if player.life_points > 0
      player.attacks(human_player)
      puts "Tu as maintenant #{human_player.life_points}PV" # ne sort pas de valeur si tu sais pk je prends
    end
  end
  p"-------------------------------------------"
end

p"La partie est finie" 

    if human_player.life_points >0
    puts "BRAVO ! Tu as vaincu la TEAM ROCKET"
    else
    puts "You Lose ! Tu ne seras jamais maître pokemon..."
    end

