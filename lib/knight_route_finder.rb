module KnightRouteFinder

  def self.algebraic_to_coordinates(algebraic)
    [algebraic[0].ord - 65, algebraic[1].to_i - 1]
  end
  
end
