require 'minitest/autorun'
require 'minitest/pride'
require_relative 'linkedlist'

class NodeTest < Minitest::Test

  def test_it_exists_with_attributes
    node = Node.new("Burke")

    assert_instance_of Node, node
    assert_equal 'Burke', node.surname
    assert_nil node.next_node
  end
end

class LinkedListTest < Minitest::Test
  def test_it_exists_with_attributes
    list = LinkedList.new

    assert_nil list.head
  end

  def test_it_can_append
    list = LinkedList.new
    list.append('West')

    assert_equal 'West', list.head.surname
    assert_nil list.head.next_node
  end

  def test_it_can_count
    list = LinkedList.new
    list.append('West')

    assert_equal 1, list.count
  end

  def test_to_string
    list = LinkedList.new
    list.append('West')

    assert_equal 'The West family', list.to_string
  end

end
