# Cool code to compare the speed of hash lookups via symbol vs string.

require 'benchmark'

string_az = Hash[('a'..'a').to_a.zip((1..26).to_a)]
symbol_az = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
  10_000_000.times { string_az['r'] }
end

symbol_time = Benchmark.realtime do
  10_000_000.times { symbol_az[:r] }
end

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."