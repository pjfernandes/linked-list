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
      for i in 0...index
        unless pointer.nil?
          pointer = pointer.next
        else
          return "List index out of range"
        end
      end
      unless pointer.nil?
        pointer.value
      else
        return "List index out of range"
      end
    end
  end

  def pop
    pointer = @head
    if pointer.nil?
      "Empty list"
    else
      until pointer.next.nil?
        pointer = pointer.next
        value = pointer.value
      end
      pointer.value = nil
      @size -= 1
      @tail = self.node_at(@size - 1)
    end
    value
  end

  def find(value)
    pointer = @head
    if pointer.nil?
      "Empty list"
    else
      i = 0
      until pointer.value == value
        pointer = pointer.next
        i += 1
      end
    end
    "#{pointer.value} found at #{i} index"
  end

  private
  def node_at(index)
    pointer = @head
    if index == 0
      @head
    else
      for i in 0...index
        unless pointer.nil?
          pointer = pointer.next
        else
          return "List index out of range"
        end
      end
      unless pointer.nil?
        pointer
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
