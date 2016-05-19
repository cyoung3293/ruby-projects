alpha = [*('a'..'z')]

puts "Please enter a string:"
usr_str = gets.downcase.chomp

puts "Please enter the shift number:"
usr_shift = gets.to_i

usr_arr = usr_str.split("")

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
puts shift_arr