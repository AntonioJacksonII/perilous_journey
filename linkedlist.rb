class Node
  attr_reader :surname,
              :next_node

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
    @head = Node.new(name)
  end

  def count
    1
  end

  def to_string
    "The #{head.surname} family"
  end
end
