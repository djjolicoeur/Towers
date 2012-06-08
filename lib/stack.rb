# Simple wrapper around an Array 
# to lock into us into the Stack ADT

class Stack 
  def initialize
    @list = []
  end
  
  def push(element)
    @list.push(element)
  end
  
  def pop()
    @list.pop()
  end
  
  def empty?
    @list.empty?
  end
end
