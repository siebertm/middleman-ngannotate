# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "middleman-ngannotate/version"

Gem::Specification.new do |s|
  s.name = "middleman-ngannotate"
  s.version = Middleman::Ngannotate::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ["Michael Siebert"]
  s.email = ["siebertm85@googlemail.com"]
  s.homepage = "https://github.com/siebertm/middleman-ngannotate"
  s.summary = %q{ngannotate for Middleman}
  s.description = %q{Transform AngularJS code in the asset pipeline to be safe for minification.}
  s.license = "MIT"
  s.files = `git ls-files -z`.split("\0")
  s.test_files = `git ls-files -z -- {fixtures,features}/*`.split("\0")
  s.require_paths = ["lib"]
  s.add_runtime_dependency("middleman-core", ["~> 3.2"])
  s.add_runtime_dependency("middleman-sprockets", ["~> 3.2"])
  s.add_runtime_dependency("execjs", [">= 1.4"])
end
