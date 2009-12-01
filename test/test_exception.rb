require File.expand_path(File.dirname(__FILE__) + "/../lib/jsmin")
require 'test/unit'

class ExceptionTest < Test::Unit::TestCase
  def test_exception
    File.open("js/error.js") do |i|
      JSMin.minify(i)
    end
    assert_raise {}
  rescue JSMin::ParseError => e
    assert_equal %q{JSMin Parse Error: unterminated string literal: "\n" at line 4 of #<File:js/error.js>},
                  e.to_s
  end
end
