## Why Can Breadth-First Search Find Shortest Path?

BFS was used to find the shortest path in an unweighted graph in this project.

In level-order traversal of a graph, the vertices are explored in layers. That is, vertices are visited in all directions at once:

<img src="images/simple.png" alt="isolated" width="200"/>


There could be multiple routes to a vertex. If J is the starting point, and N is the goal, then the rightmost path is the first to reach N:

<img src="images/simple_2.png" alt="isolated" width="200"/>

And in breadth-first search, N is first reached through the shortest path.

But if depth-first search were attempted, then the entire left path could be traversed first, and then we couldn't just trace back the path to J and get the shortest path as we could in breadth-first traversal.