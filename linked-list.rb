class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

##############################

class LinkedList
  attr_accessor :head, :size

  def initialize
    @head = nil
    @size = 0
  end

  def add(data)
    if @head.nil?
      @head = Node.new(data)
      @size += 1
    else
      pointer = @head
      while !pointer.next.nil?
        pointer = pointer.next
      end
      pointer.next = Node.new(data)
    end
  end

end

lista = LinkedList.new
lista.add(7)
lista.add(8)
lista.add(9)
