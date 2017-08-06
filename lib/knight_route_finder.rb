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
    puts list_to_check.inspect
    list_to_check.each do  |coordinates|
      puts coordinates.inspect
      return false if !is_it_legal?(coordinates[0]) || !is_it_legal?(coordinates[1])
    end
    return true
  end

  def self.build_route_table(journey_hash)
    start = journey_hash[:start]
    finish = journey_hash[:finish]

    found = false
    route_table = Array.new(8) { Array.new(8) }
    knight_moves = [[-1,-2],[2,1],[-2,1],[2,-1],[-2,-1],[1,2],[-1,2],[1,-2]]
    route_table[start[0]][start[1]] = :start

    queue = [start]
    queue.each do |column,rank|
      knight_moves.each do |column_move, rank_move|
        new_column = column + column_move
        new_rank = rank + rank_move
        next if !are_they_legal?([[new_rank,new_column]])
        next if route_table[new_column][new_rank]

        if [new_column,new_rank] == finish
          found = true
          queue = []
        else
          queue << [new_column,new_rank]
        end
        route_table[new_column][new_rank] = [column,rank]
      end
    end

    return false if (!found)
    return route_table
  end

  def self.find_shortest_route_between_coordinates(start,finish)

    route_table = build_route_table({:start => start, :finish => finish})
    move_path = [finish]
    if (route_table)
      move_path.each do | coords |
        move_path << route_table[coords[0]][coords[1]] if coords != start
      end
    else
      return false
    end
    move_path.pop
    return move_path.reverse!
  end

  def self.find_shortest_route_between_algebraic_locations(args)

    start = algebraic_to_coordinates(args[0])
    finish = algebraic_to_coordinates(args[1])
    return false if !are_they_legal?([start,finish])

    route = KnightRouteFinder::find_shortest_route_between_coordinates(start,finish)
    return false if !route
    route_map = []
    route.each do |square_coordinates|
      route_map.push coordinates_to_algebraic(square_coordinates)
    end
    route_map
  end

end
