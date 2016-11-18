class Stack

  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
  end

  def remove
    @stack.pop
  end

  def show
    @stack
  end

end

class Queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue << el
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue
  end

end

class Map

  def initialize
    @map = []
  end

  def assign(key, val)
    @map.each_index { |i| return @map[i][1] = val if @map[i][0] == key }
    @map << [key, val]
  end

  def lookup(key)
    @map.each_index { |i| return @map[i][1] if @map[i][0] == key }
  end

  def remove(key)
    @map.each_index { |i| return @map.delete_at(i) if @map [i][0] == key }
  end

end
