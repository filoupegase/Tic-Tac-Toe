require_relative 'view'

class Player
  attr_accessor :name, :symbol

  def initialize
    view = View.get_name_and_symbol
    @name = view[:player_name]
    @symbol = view[:player_symbol]
  end

  def get_symbol 
    return @symbol
  end

  def get_name
    return @name
  end
end # fin de la classe

