lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mina/ts/version'

Gem::Specification.new do |s|
  s.name = 'mina-thinking-sphinx'
  s.version = Mina::TS::VERSION
  s.authors = ["Vladimir Kozlov"]
  s.email = ["nilstruct@gmail.com"]
  s.homepage = "https://github.com/airled/mina-thinking-sphinx"
  s.license = "MIT"
  s.summary = 'Mina tasks for Thinking Sphinx'
  s.require_paths = ["lib"]
  s.files = [
    "lib/mina/ts.rb",
    "lib/mina/ts/tasks.rb"
  ]
  s.add_dependency "mina", "~> 1.0"
end
