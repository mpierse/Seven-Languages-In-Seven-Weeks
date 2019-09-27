#!/usr/bin/env ruby

num = rand(10)
loop do
var = gets 
	if var.to_i > num || var.to_i < num
	puts "WRONG"
	else var.to_i == num
	puts "You win!"
	break
	end
end