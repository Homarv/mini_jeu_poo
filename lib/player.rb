require "pry"

class Player
    attr_accessor :name, :life_points
  
    def initialize(name)
      @life_points =10
      @name= name
    end

    def show_state
      puts "#{@name} à #{@life_points} de vie"
    end

    def gets_damage (damage)
      @life_points -= damage
      if @life_points <= 0 
      puts "le joueur #{@name} a été tué !"
      else 
      end
      return
    end

    def attack (player)
      puts "le joueur #{@name} attaque le joueur #{player.name}"
      damage = player.compute_damage
      player.gets_damage(damage)
      puts "il lui inflige #{damage} points de dommages"
    end

    def compute_damage
        return rand(1..6)
    end

end
 





binding.pry
p "end of program"