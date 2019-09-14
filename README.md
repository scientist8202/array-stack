# ArrayStack

An array-based stack data structure class. The class consists seven public methods, one private method, and one 
protected method. Initialization includes two instance variables: `@array` and `@size`. The public methods are the 
`size()` method, the `initialize(value = nil)` 
method, the `empty?()` method, the `push()` method, the `pop(amount = 1)` 
method, the `top()` method, and the `array=(array_stack)` method. The `size=(value)`
 method is private, and the `array()` method was `protected`. The class was 
 basically tested. The `pop()` method deeply copies all objects excluding 
 Fixnum objects.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'array-stack', '1.0.0'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install array-stack

## Usage

### Public methods

The seven public methods are the `size()` method, the `initialize(value = nil)`
 method, the `empty?()` method, the 
`push(element)` method, the `pop(amount = 1)` method, the `top()` method, and the 
`array=(array_stack)` method.

#### `size()`
The `size()` method is a getter method. Returns the `@size` instance variable's 
assigned object.

#### `initialize(value = nil)`
The `initialize(value = nil)` method constructs the ArrayStack object. Call the 
initialize method argumentless or call the `initialize(value = nil)` method 
supplying an argument. A supplied argument becomes the ArrayStack object's first 
object. In the case no argument was supplied, the ArrayStack's instance variable 
`@size` defaults 0, and the ArrayStack's `@array` instance variable is an empty 
array.

#### `empty?()`
The `empty?()` method is a getter method. In the case the `@array` instance 
variable is an empty array, the method returns the boolean true. Otherwise, 
`empty?()` returns false.

#### `push(element)`
The `push(element)` method is a setter method. In the case no argument 
was supplied, the method pushes nil on the ArrayStack and increments 
the `@size` instance variable. In the case `push(element)` was called 
and an argument supplied, the supplied object becomes the object 
on the ArrayStack's top.

#### `pop(amount = 1)`
`pop(amount = 1)` is a setter method. The "pop" operation is removing the top 
object or objects and returning them. 
The ArrayStack's size instance variable decrements proportionally. The `amount` 
parameter is the pop amount 
\-- the supplied integer is the object number popped. In the case no 
argument was supplied, the `pop(amount = 1)` method defaults 1 pop. In the 
case the supplied argument was something other than a natural number, 
`pop(amount = 1)` raises a `RuntimeError`, and prints the message: "
the amount argued was either negative or the argument was not an integer." 
In the case pop was called and the ArrayStack was empty, the return object 
is nil.

#### `top()`
The `top()` method is a getter method. Calling top() on a populated ArrayStack 
returns the object on the ArrayStack's top.

#### `array=(array_stack)`
The `array=(array_stack)` method is a setter method. The method takes an ArrayStack object 
and deeply copies the right-hand side's array object. `array=(array_stack)` iterates 
the right-hand side's contained objects, duplicates and pushes them on the 
left-hand side's ArrayStack, and increments the `@size` instance variable 
proportionally.

### Private methods
The ArrayStack class has one private method \-- the `size=(value)` method.

#### `size=(value)`
The `size=(value)` method is a setter method. The argued "value" object becomes 
the instance variable `@size`'s reference.

### Protected methods
The ArrayStack class protected one method \-- the `array()` getter method.

#### `array()`
The `array()` method is a getter method. Gets the array the instance variable 
`@array` refers and returns the object.

## Testing
The class was basically tested. Tests were written in Minitest. Further 
testing is necessary.

## Contributing

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).
Bug reports and pull requests are welcome on GitHub at https://github.com/scientist8202/array-stack. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Stack project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/scientist8202/array-stack/blob/master/CODE_OF_CONDUCT.md).
