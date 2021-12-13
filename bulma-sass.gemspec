
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bulma/sass/version"

Gem::Specification.new do |spec|
  spec.name          = "bulma-sass"
  spec.version       = Bulma::Sass::VERSION
  spec.authors       = ["bananaappletw"]
  spec.email         = ["bananaappletw@gmail.com"]

  spec.summary       = %q{Bulma, modern CSS framework based on Flexbox.}
  spec.description   = %q{Bulma, modern CSS framework based on Flexbox.}
  spec.homepage      = "https://github.com/bananaappletw/bulma-sass"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
	  f.match(%r{^(test|spec|features|release.sh)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_runtime_dependency     'sass',       '~> 3'

  spec.add_development_dependency "bundler", "~> 2"
  spec.add_development_dependency "rake", ">= 12.3.3"

end
