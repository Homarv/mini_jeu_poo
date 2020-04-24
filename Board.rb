require_relative 'BoardCase'

class Board 
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
    #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
	attr_accessor :board,

      def initialize
        #TO DO :
        #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
        #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
        @board =[]

		    @board[0] = Boardcase.new(" ","A1")
		    @board[1] = Boardcase.new(" ","A2")
		    @board[2] = Boardcase.new(" ","A3")
		    @board[3] = Boardcase.new(" ","B1")
		    @board[4] = Boardcase.new(" ","B2")
		    @board[5] = Boardcase.new(" ","B3")
		    @board[6] = Boardcase.new(" ","C1")
		    @board[7] = Boardcase.new(" ","C2")
		    @board[8] = Boardcase.new(" ","C3")
      end
	

  def play_turn
        #TO DO : une méthode qui :
        #1) demande au bon joueur ce qu'il souhaite faire
        puts "Sur qu'elle case veux tu te placer ? "
  
      user_choice = gets.chomp
      #player 1 Make choice
  
      #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
  end

  def victory
       if (@board[0] == @board[1] && @board[0] == @board[2]) || (@board[3] == @board[4] && @board[3] == @board[5]) || (@board[6] == @board[7] && @board[6] == @board[8] ) || (@board[0] == @board[3] && @board[0] == @board[6]) || (@board[1] == @board[4] && @board[1] == @board[7]) || (@board[2] == @board[5] && @board[2] == @board[8]) ||( @board[0] == @board[4] && @board[0] == @board[8]) || (@board[2] == @board[4] && @board[2] == @board[6])
      
        end
  end

end