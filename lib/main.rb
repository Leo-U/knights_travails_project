require_relative 'graph.rb'
require_relative 'knight.rb'

g = Graph.new

g.build_adj_list

knight = Knight.new

knight.knight_moves('a1', 'h8', g.adjacency_list)

# => Your knight made it in 6 moves! Path taken:
# a1
# b3
# a5
# b7
# d6
# f7
# h8