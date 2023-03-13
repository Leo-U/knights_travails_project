## Why Can Breadth-First Search Find Shortest Path?

BFS can be used to find the shortest path in an unweighted graph, which was achieved in this project. If the graph were weighted, it wouldn't work.

In level-order traversal of a graph, the vertices are explored in layers. That is, vertices are visited in all directions at once:

<img src="images/simple.png" alt="isolated" width="200"/>

There could be multiple routes to a vertex. If J is the starting point, and N is the goal, then the rightmost path is the shortest route to N:

<img src="images/simple_2.png" alt="isolated" width="200"/>

And in breadth-first search, N is arrived at via the shortest route before the longer path has a chance to be fully explored.

But if *depth*-first search were attempted, then the entire left path might be traversed first, and then we couldn't just trace back the path to J and get the shortest path as we could in breadth-first traversal.