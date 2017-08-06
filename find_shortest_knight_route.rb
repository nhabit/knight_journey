$:.unshift( File.dirname( __FILE__ ) + '/lib' ) unless $:.include?( File.dirname( __FILE__ ) + '/lib' )
require "knight_route_finder.rb"

def error_message
  puts "Incorrect input: #{ARGV.join(" ")}"
  puts "Usage: knightfinder.rb start_position end_position"
  puts "start_position and end_position need to be entered"
  puts "in algebraic notion i.e. A3 B5 D7 and be between A-H & 1-8"
end

if ARGV.length < 2
  error_message
else
  route = KnightRouteFinder::find_shortest_route_between_algebraic_locations(ARGV)
  if (!route)
    error_message()
  else
    puts route.join(" ")
  end
end
