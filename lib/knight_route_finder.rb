module KnightRouteFinder

  def self.algebraic_to_coordinates(algebraic)
    [algebraic[0].ord - 65, algebraic[1].to_i - 1]
  end

  def self.coordinates_to_algebraic(coordinates)
    "#{(coordinates[0] + 65).chr}#{ coordinates[1] + 1}"
  end


end
