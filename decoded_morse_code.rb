@container = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', 
	'.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', 
	'.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', 
	'---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', 
	'-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', 
	'-.--' => 'Y', '--..' => 'Z' } 

def decode_char(char) 
	@container[char] 
end 

puts decode_char(".-")

# decoding a word

def decode_word(word)
	@result = ''
	word.split.each { |i| @result.concat(@container[i]) }
	@result
end

puts decode_word("-- -.--")
