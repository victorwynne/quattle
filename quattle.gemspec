# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "Quattle"
  spec.version       = "1.1.1"
  spec.authors       = ["Victor Wynne"]
  spec.email         = ["hello@victorwynne.com"]

  spec.summary       = "Quattle is a modern, responsive and customizable theme for Jekyll 4."
  spec.homepage      = "https://quattle.victorwynne.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select do |f| f.match(%r{^(_(assets|includes|layouts|sass)/|(LICENSE|README)((\.(yml|xml|html|scss|txt|md|markdown)|$)))}i) end

  spec.add_runtime_dependency "jekyll", "~> 4.2"

  spec.add_development_dependency "bundler", "~> 2.2"
  spec.add_development_dependency "rake", "~> 13.0"
end
