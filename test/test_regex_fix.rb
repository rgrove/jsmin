require File.expand_path(File.dirname(__FILE__) + "/../lib/jsmin")
require 'test/unit'

class RegexFix < Test::Unit::TestCase
  def test_vs_jq_mobile
    File.open("js/js_mobile-a3.js") do |i|
      JSMin.minify(i)
    end
  end
end
