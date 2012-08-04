# To change this template, choose Tools | Templates
# and open the template in the editor.
require './board'

if ARGV.size != 1
  puts "Usage: main <number of discs>"
  exit
end

n = ARGV[0].to_i

board = Board.new

board.play(n)








