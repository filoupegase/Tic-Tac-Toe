require 'pry'

class Game
  attr_accessor :player1, :player2, :rounds_array, :board, :view

  def initialize
    @view = View.new
    puts ""
    puts "Joueur 1"
    @player1 = Player.new
    puts ""
    puts "Joueur 2"
    @player2 = Player.new
    system "clear"
    @board = Board.new
  end

  def display_board
    return @board.display_board
  end

  def cell_choice
    return @view.play.to_i
  end

  def get_value_of_a_cell(number)
    @board.get_value_of_one_cell(number-1)
  end

  def set_value_of_a_cell(number)
    @board.set_value_of_one_cell(number-1, @player1.get_symbol)
  end

  def switch
    @player1, @player2 = @player2, @player1 # permet de switcher le player
  end

  def get_string_symbols(number1, number2, number3)
    string = get_value_of_a_cell(number1) + get_value_of_a_cell(number2) + get_value_of_a_cell(number3)
    return string
  end

  def winning_combinations # Fonction qui retourne l'ensemble des combinaisons de victoire possible dans un array
    combinations = []
    combinations << get_string_symbols(1,2,3)
    combinations << get_string_symbols(4,5,6)
    combinations << get_string_symbols(7,8,9)
    combinations << get_string_symbols(1,5,9)
    combinations << get_string_symbols(1,4,7)
    combinations << get_string_symbols(2,5,8)
    combinations << get_string_symbols(3,6,9)
    combinations << get_string_symbols(3,5,7)
    return combinations
  end

  def compare_the_combinations # Fonction qui vérifie
    winning_combinations.size.times do |i|
      if winning_combinations[i].to_s == "XXX" || winning_combinations[i].to_s == "OOO"
        return valeur = true
      end
    end
    return false
  end


  def play
    i = 0 # J'intialise le compteur à 0
    stop = false
    while stop == false # tant que notre condition pour stopper est vrai
      puts ""
      puts "———— TOUR #{i + 1} ————".cyan # Nous jouons le tour i+1
      puts ""
      puts "À toi de jouer #{@player1.name}!" # A toi de jouer monsieur
      set_value_of_a_cell(cell_choice) # Fonction qui demande de sélectionner la case où jouer
      stop = compare_the_combinations # le stop prend la valeur de la méthode de vérification
      display_board # On affiche la board
      switch # On change de joueur
      i += 1 # On incrémente i
      if i > 8 && stop == false # On vérifie le nombre de tours et que le stop est toujours faux
        puts "Egalité ! Personne n'a gagné :( Prend un curly !" # Les deux conditions déclenchent l'égalité
        return
      end
    end
    switch
    puts ""
    puts "Bravo, #{player1.name} a gagné !".green
    puts ""
  end

end # fin de la classe
