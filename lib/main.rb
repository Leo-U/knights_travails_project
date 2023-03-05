require_relative 'knight.rb'

knight = Knight.new

knight.knight_moves('a1', 'h8')

# => Your knight made it in 6 moves! Path taken:
# a1
# b3
# a5
# b7
# d6
# f7
# h8