# write your solution here
def pigLatin(input)

	# split input into array
	txtArray = input.downcase.split('')
	puts "split #{input} into #{txtArray}"

	if (txtArray[0] =~ /[aeiou]/)
		input += "way"
	else
		while true 
			break if txtArray[0] =~/[aeiouy]/
			txtArray.push(txtArray[0])
			txtArray.shift
		end
		puts "shifting consonants to the back #{txtArray} then adding ay"
		output = txtArray.join("")
		output += "ay"
	end
end

puts "input: #{ARGV[0]}"
puts "output: " + pigLatin("#{ARGV[0]}")
