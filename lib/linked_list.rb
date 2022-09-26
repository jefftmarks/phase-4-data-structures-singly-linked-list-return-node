require_relative './node'
require 'pry'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
		return nil if n > self.size || n < 1

		target = self.size - n
		last_node = self.head
		count = 0

		while count < target
			last_node = last_node.next_node
			count += 1
		end

		last_node.value
	
  end

	def size
		return 0 unless self.head

		last_node = self.head
		count = 1

		while last_node.next_node
			last_node = last_node.next_node
			count += 1
		end

		count
		
	end

end

linked_list = LinkedList.new
linked_list.head = Node.new(1)
linked_list.head.next_node = Node.new(2)
linked_list.head.next_node.next_node = Node.new(3)

# binding.pry
