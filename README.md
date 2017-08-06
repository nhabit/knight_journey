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

Yes, it was a fun challenge, it took longer than 2 hours, but mostly because once I started I found it hard to stop. 

The problem itself was not too hard. I started with a spike script that worked and then turned it into a module ```lib/knight_route_finder.rb``` and a runner file ```knights_travails.rb``` .

I was intentionally attempting to avoid creating objects and using the object paradigm. The module functions in the knight_route_finder are all standalone and don't need access to any state variables. Initially I was considering using Elixir and may well still do that too (for the fun and learning). 


