class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

##############################

class LinkedList
  attr_accessor :head, :size, :tail

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def add(data)
    if @head.nil?
      @head = Node.new(data)
      @tail = @head
      @size += 1
    else
      pointer = @head
      until pointer.next.nil?
        pointer = pointer.next
      end
      @tail = Node.new(data)
      pointer.next = @tail
      @size += 1
    end
  end

  def at(index)
    pointer = @head

    if index == 0
      @head.value
    else
      for i in 0..index
        if !pointer.nil?
          pointer = pointer.next
        else
          return "List index out of range"
        end
      end
      if !pointer.nil?
        pointer.value
      else
        return "List index out of range"
      end
    end
  end


end

lista = LinkedList.new
lista.add(7)
lista.add(8)
lista.add(9)
