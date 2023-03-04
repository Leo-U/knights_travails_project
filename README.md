### knights_travails_project

Completed as Part of The Odin Project curriculum:

https://www.theodinproject.com/lessons/ruby-knights-travails

The purpose of this project was to build a function that outputs the shortest path that a chess knight takes to reach a target square -- that is, it outputs all the squares it stops on along the way.

```
knight_moves('a1','b3') => ['a1','b3']
knight_moves('a1','d4') => ['a1','b3','d4']
knight_moves('d4','a1') => ['d4','b3','a1']
```

`adjacency_list.rb` is a representation of a graph in which each vertex is a square's coordinates, and the edges correspond to the path a knight takes, as in this graph:

https://raw.githubusercontent.com/Leo-U/knights_travails_project/main/graph_visualization.png

Breadth-first traversal was then used to find the shortest path.

I like chess, so I decided to use standard chess notation rather than xy coordinates.