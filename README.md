### Knights Travails Project

Completed as Part of The Odin Project curriculum:

https://www.theodinproject.com/lessons/ruby-knights-travails

The purpose of this project was to build a function that outputs the shortest path that a chess knight takes to reach a target square -- that is, it outputs all the squares it stops on along the way.

```
knight_moves('a1','b3') => ['a1','b3']
knight_moves('a1','d4') => ['a1','b3','d4']
knight_moves('d4','a1') => ['d4','b3','a1']
```

First, the code in `graph.rb` generates an adjacency list, which is a representation of a graph, the graph in this case being a graph of legal knight moves.

A visual representation of the graph generated by graph.rb:

https://raw.githubusercontent.com/Leo-U/knights_travails_project/main/images/graph_visualization.png

Breadth-first traversal is used to find the shortest path in `knight.rb`, and the Knight class is instantiated and its methods used in `main.rb`.
See `why_BFS_shortest_path?.md` for an explanation of why breadth-first search is used to find the shortest path and, why depth-first search wouldn't do the job.

I like chess, so I decided to use standard chess notation rather than xy coordinates.

replit: https://replit.com/@LeoU1/knightstravailsproject