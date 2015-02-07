class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  print "#{list_node.value} --> "
  if list_node.next_node.nil?
    print "nil\n"
    return
  else
    print_values(list_node.next_node)
  end
end

def reverse_list(list)
  stack = Stack.new

  while list
    stack.push(list)
    list = list.next_node
  end
  stack.data
end


class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

  # Push an item onto the stack
  def push(element)
      if @data == nil 
        #if @data is empty, then push a new node with the
        #element value and make it point to nil because it will be the
        #last node
        temp = LinkedListNode.new(element.value, nil) 
        @data = temp
      else
        #otherwise push a new node but make it point to the
        #last pushed node which is @data
        temp = @data
        temp2 = LinkedListNode.new(element.value, temp)
        #make @data equal to the last pushed node
        @data = temp2
      end
  end

  # Pop an item off the stack.  
  # Remove the last item that was pushed onto the
  # stack and return it to the user
  def pop
    
  end

end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)


print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)


