# knight_journey
Discover the shortest route between two locations algebraics

Given a standard 8x8 chessboard, accept two squares identified by algebraic chess notation. The first square is the starting position, and the second square is the ending position. Find the shortest sequence of valid moves to take a Knight piece from the starting position to the ending position. Each move must be a legal move by a Knight. For any two squares there may be more than one valid solution. There are no pieces other than the Knight on the board.



Written and tested with Ruby 2.2.3 - It should probably work with any later version of ruby, but not tested.


To **Install**:
```
git clone git@github.com:nhabit/knight_journey.git
cd knight_journey
bundle install --path .bundle
```
To **Test**:
Rspec tests are included. To run the tests type:
```
cd knight_journey
bundle exec rspec
```

To **Run**:
```
cd knight_journey
ruby knights_travails.rb A8 B7
```

***Notes/Comments/Thoughts:***

1. Yes, it was a fun challenge, it took longer than 2 hours, but mostly because once I started I found it hard to stop. 
2. The problem itself was not too hard. I started with a spike script that worked and then turned it into a module ```lib/knight_route_finder.rb``` and a runner file ```knights_travails.rb``` .
3. I was intentionally attempting to avoid creating objects and using the object paradigm. The module functions in the knight_route_finder are all standalone and don't need access to any state variables. Initially I was considering using Elixir and may well still do that too (for the fun and learning). Ruby's mutable variables made it easy for me to modify the queue while I was iterating through it. There's lots more need for recursion as the correct approach with a pure functional language like Erlang/Elixir
4. ``self.build_route_table(journey_hash)```
The journey_hash could actually just be a two element array/list/tuple of some sort, but making it a hash makes it easier to refactor and perhaps add something like 'waypoint' or 'blockers' to further the complexity of a journey.
5. It's probably more verbose than it needs to be and I'm aware that I'm not using the latest idioms (especially for hashes). But I let myself off the hook because it's the first Ruby I've written for a few years.
6. It's worth noting that changing the order of ```knight_moves = [[-1,-2],[2,1],[-2,1],[2,-1],[-2,-1],[1,2],[-1,2],[1,-2]]``` changes the order of the search which in turn can result in a different 'shortest journey' being returned. This is also because there can be more than one short journey (of the same length).



