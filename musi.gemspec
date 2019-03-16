
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "musi/version"

Gem::Specification.new do |spec|
  spec.name          = "musi"
  spec.version       = Musi::VERSION
  spec.authors       = ["Eselbeus"]
  spec.email         = ["eselbeus@gmail.com"]

  spec.summary       = %q{Simple music theory gem}
  spec.description   = %q{A gem for sharping/flattening notes and raising/lowering by perfect 5ths}
  spec.homepage      = "https://github.com/Eselbeus/musi.git"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # spec.add_development_dependency "pry"
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
