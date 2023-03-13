# Generates adjacency list of legal chess knight moves: {a1 => [b3, c2], a2 => ...}
class Graph
  attr_reader :adjacency_list, :root

  def initialize
    @adjacency_list = {}
    @root = 'a1'
    @knight_move_offsets = [
      [-1, -2],
      [-2, -1],
      [-2, 1],
      [-1, 2],
      [1, -2],
      [2, -1],
      [2, 1],
      [1, 2],
    ]
  end

  # Returns true if the given coordinates are valid chess notation, false otherwise
  def valid_coord?(x, y)
    x.match?(/[a-h]/) && y.between?('1','8')
  end

  # Adds a new edge to the adjacency list, if the destination vertex is a valid coordinate
  def add_edge(src, dest)
    @adjacency_list[src] ||= []
    @adjacency_list[src] << dest if valid_coord?(dest[0], dest[-1])
  end

  # Uses #add_edge to generate one entry of an adjacency list for all valid knight moves from the root vertex
  def add_adj_entry
    @knight_move_offsets.each do |el|
      x = (@root[0].ord + el[0]).chr
      y = "#{@root[1].to_i + el[1]}"
      add_edge(@root, x + y) if valid_coord?(x, y)
    end
  end

  # Uses #add_adj_entry to build the entire adjacency list
  def build_adj_list
    ('a'..'h').each do |letter|
      @root[0] = letter
      ('1'..'8').each do |number|
        @root[1] = number
        add_adj_entry
      end
    end
  end

end