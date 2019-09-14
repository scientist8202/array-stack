lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "array-stack/version"

Gem::Specification.new do |spec|
  spec.name    = "array-stack"
  spec.version = ArrayStack::VERSION
  spec.authors = ["Bradley"]
  spec.email   = ["bradleytannor@gmail.com"]

  spec.summary     = %q{An array-based stack data structure class.}
  spec.description = %q{The class consists seven public methods, one private method, and one
protected method. Initialization includes two instance variables: `@array` and `@size`. The public methods are the
`size()` method, the `initialize(value = nil)`
method, the `empty?()` method, the `push()` method, the `pop(amount = 1)`
method, the `top()` method, and the `array=(stack)` method. The `size=(value)`
 method is private, and the `array()` method was `protected`. The class was
 basically tested. The `pop()` method has one bug, and improvements are coming.}
  spec.homepage    = "https://github.com/scientist8202/array-stack"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
