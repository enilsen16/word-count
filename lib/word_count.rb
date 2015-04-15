# Modify Hash Class
class CaselessHash < Hash
	def [](key)
		key.respond_to?(:upcase) ? super(key.upcase) : super(key)
	end

	def []=(key, value)
		key.respond_to?(:upcase) ? super(key.upcase, value) : super(key, value)
	end
end


class Count
	def word_frequency(phrase)
		words = phrase.downcase.gsub(/[^\s\w']+|'(?!\w)|(?<!\w)'/, '').split(' ')
		word_count = CaselessHash.new
		words.each do |word|
			word_count[word] = word_count[word].to_i + 1
		end
	word_count
	end

	def phrase_frequency(phrase)
		words = phrase.downcase.gsub(/[^\s\w']+|'(?!\w)|(?<!\w)'/, '').split(' ')
		phrase_count = CaselessHash.new
		words.each_cons(2) do |a|
			words_string = a.join ' '
			phrase_count[words_string] = phrase_count[words_string].to_i + 1
		end
	phrase_count
	end
end
