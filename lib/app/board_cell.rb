class BoardCell
  attr_accessor :number, :value #une case a un numéro qui permet de la répérer et une valeur (X ou O)

  def initialize(number)
    @number = number
    @value = ''
  end

  def get_number  
    return @number 
  end

  def get_value
    return @value
  end

  def set_value(value)
    @value = value
  end

end # fin de la classe