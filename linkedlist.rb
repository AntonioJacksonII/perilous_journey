class Node
  attr_reader :surname
  attr_accessor :next_node

  def initialize(surname, next_node=nil)
    @surname = surname
    @next_node = next_node
  end
end

class LinkedList
  attr_reader :head

  def initialize(head=nil)
    @head = head
  end

  def append(name)
    if @head
      @head.next_node = Node.new(name)
    else
      @head = Node.new(name)
    end
  end

  def count
    counter = 0
    if @head
      counter = 1
      node = head.next_node
      until node == nil do
        node = node.next_node
        counter += 1
      end
    end
    counter
  end

  def to_string
    "The #{head.surname} family"
  end
end
