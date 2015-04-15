class Count
 def initialize
 end

 def word_frequency(phrase)
	words = phrase.gsub(/\W/, ' ').split(" ")
	count = Hash.new
	(0...words.length).each do |i|
		if count[words[i]] != nil
			count[words[i]] += 1
		else
			count[words[i]] = 1
		end
	end
	return count
 end
end
