class Board
  attr_accessor :cells_array # le board est défini par un tableau qui va contenir les cellules
  
  def initialize
    @cells_array = []
    9.times do |i|
    @cells_array << BoardCell.new(i) # on remplit le tableau de 9 cases
    end
  end

  def display_board # permet d'afficher le jeu
    puts ""
    display_helper
    puts ""
    puts ""

    board = Terminal::Table.new :title => "Le Morpion de la Mort".red do |t|
      t << [{:value => "."+get_value_of_one_cell(0), :alignment => :center}, {:value => "."+get_value_of_one_cell(1), :alignment => :center}, {:value => "."+get_value_of_one_cell(2), :alignment => :center}]
      t.add_separator
      t.add_row [{:value => "."+get_value_of_one_cell(3), :alignment => :center}, {:value => "."+get_value_of_one_cell(4), :alignment => :center}, {:value => "."+get_value_of_one_cell(5), :alignment => :center}]
      t.add_separator
      t.add_row [{:value => "."+get_value_of_one_cell(6), :alignment => :center}, {:value => "."+get_value_of_one_cell(7), :alignment => :center}, {:value => "."+get_value_of_one_cell(8), :alignment => :center}]
    end
    puts board
  end

  def display_helper
    puts "1|2|3".yellow
    puts "—————".yellow
    puts "4|5|6".yellow
    puts "—————".yellow
    puts "7|8|9".yellow
  end

  def get_value_of_one_cell(number)
    @cells_array[number].get_value
  end

  def set_value_of_one_cell(number,value)
    @cells_array[number].set_value(value)
  end
end # fin de la classe
