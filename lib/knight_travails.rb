require_relative 'adjacency_list.rb'

def shortest_path(start, el, dict, path)
  path.unshift el
  until el == start do
    el = dict[el]
    path.unshift el
  end
  puts "Your knight made it in #{path.count - 1} moves! Path taken:" 
  path.each {|el| puts el}
end

def enqueue_element(dict, el, queue)
  queue << el unless dict.include?(el)
end

def add_dict_entry(dict, el, current)
  dict[el] = current unless dict.include?(el)
end

# outputs shortest path a chess knight can take to a target square
def knight_moves(start, target, queue = [start], dict = {}, adj = adjacency_list, path = [])
  adj.each do
    current = queue.shift
    adj[current].each do |el|
      enqueue_element(dict, el, queue)
      add_dict_entry(dict, el, current)
      return shortest_path(start, el, dict, path) if el == target
    end
  end
end

knight_moves('a1', 'h8')
# => Your knight made it in 6 moves! Path taken:
# a1
# b3
# a5
# b7
# d6
# f7
# h8