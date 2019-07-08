#!/usr/bin/env ruby
ARGV[0].each_line do |line|
  print "#{line}"
end
print ARGV[0].scan(/\[from:(.*?)\]/).join
print (",")
print ARGV[0].scan(/\[to:(.*?)\]/).join
print (",")
print ARGV[0].scan(/\[flags:(.*?)\]/).join
print ("\n")
