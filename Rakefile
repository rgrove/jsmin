#--
# Copyright (c) 2008 Ryan Grove <ryan@wonko.com>
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the 'Software'), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#++

require 'rubygems'
require 'rake/gempackagetask'
require 'rake/rdoctask'

gemspec = Gem::Specification.new do |s|
  s.name     = 'jsmin'
  s.version  = '1.0.1'
  s.author   = 'Ryan Grove'
  s.email    = 'ryan@wonko.com'
  s.homepage = 'http://github.com/rgrove/jsmin/'
  s.platform = Gem::Platform::RUBY
  s.summary  = "Ruby implementation of Douglas Crockford's JSMin JavaScript " <<
               "minifier."

  s.require_path = 'lib'
  s.has_rdoc     = true

  s.required_ruby_version = '>= 1.8.6'

  s.files = [
    'HISTORY',
    'lib/jsmin.rb'
  ]
end

Rake::GemPackageTask.new(gemspec) {|p|}

Rake::RDocTask.new do |rd|
  rd.main     = 'JSMin'
  rd.title    = 'JSMin Documentation'
  rd.rdoc_dir = 'doc'

  rd.rdoc_files.include('lib/jsmin.rb')

  rd.options << '--line-numbers' << '--inline-source'
end
