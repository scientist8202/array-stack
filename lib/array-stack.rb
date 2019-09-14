require "array-stack/version"

class ArrayStack

  # size.
  # Getter method. Returns the ArrayStack's size.
  attr_reader(:size)

  # Constructor
  # Initialize the ArrayStack.
  # @return A ArrayStack object.
  def initialize(value = nil)

    @size  = 0
    @array = []
    if (!value.nil?) then
      (self.push(value))
    end

  end

  # empty?
  # Checks whether the ArrayStack is empty.
  # @return True in the case the array is empty, and false otherwise.
  def empty?()
    return @array.empty?
  end

  # push.
  # Pushes an element on the ArrayStack's array and increments the size
  # instance variable.
  # @param element: the object the ArrayStack is taking.
  def push(element)
    @array.push(element)
    @size += 1
  end

  # pop.
  # Removes the top elements and returns them.
  # @param amount: the pop amount. Default is popping one element.
  # @return In the case the size is at least two and the parameter is valid,
  # popped is an array containing the top elements. In the case the size is
  # 1 and the parameter is valid, pop returns the stored object. In the case
  # the ArrayStack is empty, pop() returns nil.
  def pop(amount = 1)

    if (amount <= 0 || !amount.instance_of?(Fixnum))
      raise RuntimeError, "the amount argued was either negative or " +
          "the argument was not an integer."
    end
    if (size() >= 1 && amount <= size())
      popped    = @array.pop(amount)
      self.size -= amount
      if (popped.size() > 1)
        return popped
      else
        return popped[0]
      end
    else
      nil
    end

  end

  # top.
  # Getter method. Returns the ArrayStack's top value.
  def top()
    @array.last()
  end

  # array=().
  # Deeply copies the ArrayStack and assigns.
  def array=(array_stack)
    if (!array_stack.instance_of?(ArrayStack))
      raise(RuntimeError, "the argued value #{array_stack} is not an ArrayStack instance.")
    end
    if (size() > 0) then
      pop(size())
    end
    array_stack.array.each do |element|
      push(element.dup())
    end
    self.size = array_stack.size()
  end

  private

  # size=()
  # Sets the size instance variable.
  def size=(value)
    @size = value
  end

  protected

  # array.
  # Getter method. Returns the ArrayStack's size.
  attr_reader :array

end
