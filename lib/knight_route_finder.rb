module KnightRouteFinder

  def self.algebraic_to_coordinates(algebraic)
    [algebraic[0].ord - 65, algebraic[1].to_i - 1]
  end

  def self.coordinates_to_algebraic(coordinates)
    "#{(coordinates[0] + 65).chr}#{ coordinates[1] + 1}"
  end

  def self.is_it_legal?(position_to_check)
    (position_to_check >=0 and position_to_check <=7 )
  end

  def self.are_they_legal?(list_to_check)
    list_to_check.each do  |coordinates|
      return false if !is_it_legal?(coordinates[0]) || !is_it_legal?(coordinates[1])
    end
    return true
  end



end
