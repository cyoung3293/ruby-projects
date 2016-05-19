def cipher(word, n)

	new_word = ""
	word.each_char do |i|
		n.times do
			if(i == "z")
				i = "a"
			elsif(i == "Z")
				i = "A"
			elsif i =~ /\W/
				i
			else 
				i.next!
			end
		end
		new_word += i	
	end
	puts new_word
end

puts "Please enter message:"
word = gets.chomp
puts "Please enter shift integer:"
n = gets.to_i

cipher(word, n)