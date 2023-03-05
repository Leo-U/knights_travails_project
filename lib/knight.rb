require_relative 'graph.rb'

class Knight

  def init_graph
    g = Graph.new
    g.build_adj_list
    g.adjacency_list
  end

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
  def knight_moves(start, target, queue = [start], dict = {}, path = [], adj = init_graph)
    adj.each do
      current = queue.shift
      adj[current].each do |el|
        enqueue_element(dict, el, queue)
        add_dict_entry(dict, el, current)
        return shortest_path(start, el, dict, path) if el == target
      end
    end
  end

end