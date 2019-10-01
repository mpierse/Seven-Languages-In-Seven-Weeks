#day-two-grep

#read a file and print lines containing the word "we"

    File.foreach("sample.txt") do |e|
		puts e if e.match(/we/)
	end
