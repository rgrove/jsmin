require '../lib/jsmin'

def benchmark_c(input, output)
  start = Time.now
  `jsmin < #{input} > #{output}`
  finish = Time.now

  puts "jsmin.c  [#{input}]: #{finish - start}"
end

def benchmark_ruby(input, output)
  start = Time.now

  File.open(input, 'r') do |i|
    File.open(output, 'w') {|o| o << JSMin.minify(i) }
  end

  finish = Time.now

  puts "jsmin.rb [#{input}]: #{finish - start}"
end

benchmark_c('js/jquery-1.2.6.js', 'out/c-jquery-1.2.6.js')
benchmark_ruby('js/jquery-1.2.6.js', 'out/ruby-jquery-1.2.6.js')
benchmark_c('js/jslint.js', 'out/c-jslint.js')
benchmark_ruby('js/jslint.js', 'out/ruby-jslint.js')

puts
