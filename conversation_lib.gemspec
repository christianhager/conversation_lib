# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "conversation_lib/version"

Gem::Specification.new do |s|
  s.name        = "conversation_lib"
  s.version     = ConversationLib::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Christian Hager"]
  s.email       = ["christian@naturepreneruship.com"]
  s.homepage    = "http://rubygems.org/gems/conversation_lib"
  s.summary     = %q{Talks to your conversation app}
  s.description = %q{Talks to your conversation app}

  s.rubyforge_project = "conversation_lib"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
