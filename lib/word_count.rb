class Count
 def word_frequency(phrase)
	words = phrase.gsub(/[^\s\w']+|'(?!\w)|(?<!\w)'/, '').split(' ')
	count = Hash.new
	(0...words.length).each do |i|
		if count[words[i]] != nil ? count[words[i]] += 1 : count[words[i]] = 1
		end
	end
	count
 end

	def phrase_frequency(phrase)
		words = phrase.gsub(/[^\s\w']+|'(?!\w)|(?<!\w)'/, '').split(' ')
		phrase_count = Hash.new
		words.each_cons(2) do |a|
			if phrase_count[a.join(" ")] != nil ? phrase_count[a.join(" ")] += 1 : phrase_count[a.join(" ")] = 1
			end
		end
	phrase_count
	end
end
