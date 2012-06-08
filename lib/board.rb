# Board class
require 'stack'

class Board
  #initialize hash of "pegs"
  def initialize
    @pegs = {
      "A" => Stack.new, 
      "B" => Stack.new,
      "C" => Stack.new,
    } 
  end
  
  #load initial game state
  def load(n)
    (1..n).each{ |x| @pegs["A"].push(n - x + 1) }
  end
  
  #print state of board
  def print_state
    @pegs.each do |key,value|  
      puts "#{key}:"  + value.inspect
    end
  end
  
  #recursive algorithm to solve puzzle
  def hanoi(n, a, b, c)
    if(n <= 1)
      b.push(a.pop)
      puts "== move =="
      print_state
      puts
    else
      hanoi(n - 1, a,c,b)
      hanoi(1,a,b,c)
      hanoi(n - 1,c,b,a)
    end
  end
  
  #execute algorithm for "n" pieces
  def play(n)
    load(n)
    puts "== Initial State =="
    print_state
    hanoi(n, @pegs["A"], @pegs["C"], @pegs["B"])
    puts "== Done =="
  end
  
  
end
