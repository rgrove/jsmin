# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{jsmin}
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Grove"]
  s.date = %q{2009-02-20}
  s.email = %q{ryan@wonko.com}
  s.files = ["HISTORY", "lib/jsmin.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/rgrove/jsmin/}
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.6")
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Ruby implementation of Douglas Crockford's JSMin JavaScript minifier.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
