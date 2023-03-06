# Calculates the shortest path between two squares on the chessboard and outputs it
#
# start - the starting square in chess notation (e.g. "a1")
# target - the target square in chess notation (e.g. "h8")
# queue - a queue of nodes to be visited
# dict - a dictionary of nodes visited and their shortest path from the starting square
# path - the shortest path from start to target (a dictionary lookup)
# adj - the adjacency list of the graph

require_relative 'graph.rb'

class Knight
  # Initializes a graph object and builds its adjacency list
  def init_graph
    @g = Graph.new
    @g.build_adj_list
    @g.adjacency_list
  end

  # Traces the shortest path from the start to the target node using the dictionary of visited nodes.
  def shortest_path(start, el, dict, path)
    path.unshift el
    until el == start do
      el = dict[el]
      path.unshift el
    end
  end

# Prints the shortest path taken from start to target node.
  def print_shortest_path (path)
    puts "Path taken:"
    path.each {|el| puts el; sleep(0.5)}
    puts "yOUr hORseY mAde iT In #{path.count - 1} MoVeS!"    
  end

# Adds a new element to the queue if it hasn't been visited already.
  def enqueue_element(dict, el, queue)
    queue << el unless dict.include?(el)
  end

# Adds a new entry to the dictionary of visited nodes.
  def add_dict_entry(dict, el, current)
    dict[el] = current unless dict.include?(el)
  end

# Outputs the shortest path a knight can take to move from start to target node.
def knight_moves(start, target, queue = [start], dict = {}, path = [], adj = init_graph)
    adj.each do
      current = queue.shift
      adj[current].each do |el|
        enqueue_element(dict, el, queue)
        add_dict_entry(dict, el, current)
        shortest_path(start, el, dict, path) if el == target
        return print_shortest_path(path) if el == target
      end
    end
  end

end