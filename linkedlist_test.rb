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
