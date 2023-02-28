### knights_travails_project

The purpose of this project is to build a function that outputs the shortest path that a chess knight takes to reach a target square -- that is, it outputs all the squares it stops on along the way.

knight_moves([0,0],[1,2]) == [[0,0],[1,2]]
knight_moves([0,0],[3,3]) == [[0,0],[1,2],[3,3]]
knight_moves([3,3],[0,0]) == [[3,3],[1,2],[0,0]]


The plan is to build a graph in which each vertex is a square's coordinates, and the edges correspond to the path a knight takes, as in this graph:

https://graphonline.ru/en/?graph=vOrNELJzZecXToKs

Breadth-first traversal will then be used to find the shortest path.

Maybe I'll use normal chess coords instead of what the lesson calls for.