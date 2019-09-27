#!/usr/bin/env ruby
this_array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]

this_array = this_array.each_slice(4).to_a 
puts this_array.size
this_array.each {|a| puts a.to_s}