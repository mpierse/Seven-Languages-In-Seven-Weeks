#!/usr/bin/env ruby

#write the contents of the array 4 numbers at a time using .each_slice

this_array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]

this_array = this_array.each_slice(4).to_a 
puts this_array.size
this_array.each {|a| puts a.to_s}