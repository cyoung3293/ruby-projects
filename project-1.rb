alpha = [*('a'..'z')]

puts "Please enter a string:"
usr_str = gets.downcase.chomp

puts "Please enter the shift number:"
usr_shift = gets.to_i

usr_words = usr_str.split(" ")
sent_lnth = usr_words.length
i = 0
new_sent = []

while i < sent_lnth
	usr_arr = usr_words[i].split("")
	shift_arr = usr_arr.map do |e| 
		alpha.index(e) + usr_shift
	end

	shift_arr.map! do |e| 
		if e > 26
		e = e - 26
		else
		e	
		end  
	end

	new_arr = shift_arr.map { |e| alpha[e]  }

	new_sent.push(new_arr.join(''))
	i+=1
end

new_str = new_sent.join(" ")
puts new_str
