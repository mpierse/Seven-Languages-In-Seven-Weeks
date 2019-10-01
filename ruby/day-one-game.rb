#!/usr/bin/env ruby

#print "hello world"
puts "hello world"

# find the index of the word Ruby in "Hello Ruby"
puts "Hello Ruby".index "Ruby"

#print "Maggie" ten times
(1...10).each {puts "Maggie"}

(1...10).each {|x| puts "this is sentence " << x}

#Make a number guessing game
num = rand(10)
var = -1
while var != num do
	var = gets.to_i
	puts "WRONG" if var > num || var < num 
end

puts "YOU WIN"