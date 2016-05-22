puts "Please enter a string:"
usr_str = gets.chomp

puts "Please enter the shift number:"
usr_shift = gets.to_i

if usr_shift > 26
	usr_shift = usr_shift % 26
end

usr_words = usr_str.split(" ")
sent_lnth = usr_words.length
i = 0
new_sent = []

while i < sent_lnth
	usr_arr = usr_words[i].split("")
	shift_arr = usr_arr.map do |e|
		int = e.ord 
		if int.between?(65, 90)
			new_int = int + usr_shift
			if new_int > 90
				new_int = new_int - 26
			end
			new_int = new_int.chr
		elsif int.between?(97, 122)
			new_int = int + usr_shift
			if new_int > 122
				new_int = new_int - 26
			end
			new_int = new_int.chr
		else
			new_int = int.chr
		end		
	end

	new_sent.push(shift_arr.join(''))
	i+=1
end

new_str = new_sent.join(" ")
puts new_str
