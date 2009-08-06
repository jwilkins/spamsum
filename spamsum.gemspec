# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{spamsum}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jonathan Wilkins"]
  s.date = %q{2009-08-06}
  s.description = %q{Wrapper for spamsum}
  s.email = %q{jwilkins@bitland.net}
  s.extensions = ["ext/extconf.rb"]
  s.files = ["README", "Rakefile", "spamsum.gemspec", "test.rb",
             "ext/edit_dist.c", "ext/spamsum.c", "ext/spamsum_wrap.c",
             "ext/spamsum.i", "ext/extconf.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/jwilkins/spamsum}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{spamsum}
  s.rubygems_version = %q{1.3.0}
  s.summary = %q{Ruby wrapper for spamsum}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2
  end
end

