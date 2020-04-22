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

    def attacks (player)
      puts "le joueur #{@name} attaque le joueur #{player.name}"
      damage = player.compute_damage
      puts "il lui inflige #{damage} points de dommages"
      player.gets_damage(damage)
    end

    def compute_damage
        return rand(1..6)
    end

end
 

class HumanPlayer < Player
   attr_accessor :weapon_level

   def initialize(name)
   @weapon_level = 1
   super(name) 
   @life_points = 100
  end

  def show_state
    puts "#{@name} à #{@life_points} de vie et une arme de niveau #{@weapon_level}"
  end

  def compute_damage
    rand(1..6) * @weapon_level
  end

  def search_weapon
    weapon_dice = rand(1..6)
    "Tu as trouvé une arme de niveau #{weapon_dice}"
    if weapon_dice> weapon_level
      @weapon_level=weapon_dice
      puts "Youhou ! elle est meilleure que ton arme actuelle : tu la prends."
    else 
      puts "M@*#$... elle n'est pas mieux que ton arme actuelle..."
    end
  end

  def search_health_pack

    health_dice = rand(1..6)
    
    if health_dice == 1
      puts "Tu n'as rien trouvé... "
    elsif health_dice>=2 && health_dice<=5
      n=50
      while @life_points <100 && n>0 
        n-1
        @life_points +=1
      end
      puts "Bravo, tu as trouvé un pack de +50 points de vie, tu as maintenant #{@life_points} Pv!"
    else
      n=80
      while @life_points <100 && n>0 
        n-1
        @life_points +=1
      puts "Waow, tu as trouvé un pack de +80 points de vie #{@life_points} Pv !"
      end
    end
  end

end


binding.pry
p "end of program"