#!/usr/bin/env ruby

#print the contents of an array 4 numbers at a time using .each

this_array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]

this_array.each do |a|
	if a.modulo(4) == 0
		puts this_array[a-4].to_s + " " + this_array[a-3].to_s + " " + this_array[a-2].to_s + " " + this_array[a-1].to_s
	end
end