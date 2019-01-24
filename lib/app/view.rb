class View
  def initialize
    puts ""
    puts "
    --------------------------------------------------
         \u{274c} BIENVENUE DANS MON SUPER MORPION \u{2B55}
    --------------------------------------------------".cyan
  end

  def self.get_name_and_symbol
    puts ""
    puts "Choisis un nom :)"
    print "> ".green #couleur
    player_name = gets.chomp.to_s
    # puts "Ok #{player_name}"
    puts ""
    puts "Choisis maintenant un symbole entre X et O"
    print "> ".green
    player_symbol = gets.chomp.to_s.upcase
    # puts "Tu as choisi le symbole : #{player_symbol}"
    return params = {:player_name => player_name, :player_symbol => player_symbol}
  end

  def play
    puts "Choisis une case entre 1 et 9 pour placer ton symbole"
    print "> ".green
    chosen_number = gets.chomp.to_i
    system "clear"
    return chosen_number
  end
end # fin de la classe
