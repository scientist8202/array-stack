require "test_helper"

class ArrayStackTest < Minitest::Test

  def test_that_it_has_a_version_number
    refute_nil ::ArrayStack::VERSION
  end

  # test zero argument initialize.
  # Creates an empty ArrayStack. Asserts the ArrayStack is an ArrayStack instance,
  # and asserts the size is 0.
  def test_zero_argument_initialize

    array_stack = ArrayStack.new
    assert_instance_of(ArrayStack, array_stack)
    assert_equal(0, array_stack.size())

  end

  # test argument initialize.
  # Initializes an ArrayStack object, passing the value 2. Asserts the ArrayStack
  # object is an ArrayStack class instance. Asserts the size is one and the
  # value pushed was 2. Asserts the numerical object pushed was the
  # referred object "value_object".
  def test_argument_initialize

    value_object = 2
    array_stack  = ArrayStack.new(value_object)
    assert_instance_of(ArrayStack, array_stack)
    assert_equal(1, array_stack.size())
    assert_equal(2, array_stack.top())
    assert_same(value_object, array_stack.top())

  end

  # test the ArrayStack is empty.
  # Creates an empty ArrayStack object. Asserts the ArrayStack is empty. Creates
  # an second ArrayStack object, passing the value one. Asserts the popped
  # value equals one, and the ArrayStack is empty.
  def test_the_array_stack_is_empty

    array_stack = ArrayStack.new()
    assert_empty(array_stack)
    array_stack = ArrayStack.new(1)
    assert_equal(1, array_stack.pop())
    assert_empty(array_stack)

  end

  # test pushes properly.
  # Creates an empty ArrayStack. Pushes the value one on the ArrayStack. Asserts
  # the value pushed was one, and the ArrayStack size is one.
  def test_pushes_properly

    array_stack = ArrayStack.new
    array_stack.push(1)
    assert_equal(1, array_stack.top())
    assert_equal(1, array_stack.size())

  end

  # test push an already populated ArrayStack.
  # Creates an ArrayStack object, passing the value one. Pushes the value 2, and
  # asserts the ArrayStack size is two, and the value on top is two.
  def test_push_an_already_populated_array_stack

    array_stack = ArrayStack.new(1)
    array_stack.push(2)
    assert_equal(2, array_stack.size())
    assert_equal(2, array_stack.pop())

  end

  # test an invalidly argued pop raises InvalidArgument.
  # Creates an empty ArrayStack object. Sends pop, and passes the value
  # negative one. Asserts the message raises an InvalidArgument
  # exception.
  def test_an_invalidly_argued_pop_raises_InvalidArgument
    array_stack = ArrayStack.new
    assert_raises(RuntimeError) { array_stack.pop(-1) }
  end

  # test ideal pop.
  # Creates an ArrayStack object, passing the value one. Pushes the values 2
  # and 3 sequentially. Sends the message pop on the ArrayStack, and passes
  # the value 2. Assigns the variable "returned" the returned object.
  # Asserts the returned array includes the values two and three. Asserts
  # the remaining ArrayStack's value is one and its size is one.
  def test_ideal_pop

    array_stack = ArrayStack.new(1)
    array_stack.push(2)
    array_stack.push(3)
    returned = array_stack.pop(2)
    assert_includes(returned, 3)
    assert_includes(returned, 2)
    assert_equal(1, array_stack.top())
    assert_equal(1, array_stack.size())

  end

  # test popping an empty ArrayStack returns nil.
  # Creates an empty ArrayStack object. Sends the message pop(), and asserts
  # the returned object is nil.
  def test_popping_an_empty_array_stack_returns_nil
    array_stack = ArrayStack.new()
    assert_nil(array_stack.pop())
  end

  # test top edge case.
  # Creates an empty ArrayStack object. Asserts the message top returns nil.
  def test_top_edge_case
    array_stack = ArrayStack.new()
    assert_nil(array_stack.top())
  end

  # test illegal size set raises exception.
  # Creates an empty ArrayStack. Asserts assigning the ArrayStack's size outside
  # the class implementation raises a RuntimeError.
  def test_illegal_size_set_raises_exception
    array_stack = ArrayStack.new()
    assert_raises(NoMethodError) { array_stack.size = 1 }
  end

  # test array assignment deeply copies.
  # Creates an empty ArrayStack object and an ArrayStack object with one one value.
  # Assigns the first ArrayStack the second ArrayStack. Asserts the two ArrayStack
  # objects are not the same, and the objects in the ArrayStacks are different.
  # If the ArrayStack is containing Fixnum, then pop() shallow copies.
  def test_array_assignment_deeply_copies

    array_stack1       = ArrayStack.new()
    array_stack2       = ArrayStack.new("hello")
    array_stack1.array = array_stack2
    refute_same(array_stack1, array_stack2)
    array_stack1obj = array_stack1.pop()
    array_stack2obj = array_stack2.pop()
    refute_same(array_stack1obj, array_stack2obj)

  end

end
