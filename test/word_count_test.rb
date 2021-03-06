require "word_count"
require "test_helper"

describe "count" do
	it "counts a single word when the phrase is a single word" do
		phrase = "hello"
		count = Count.new
		hash = CaselessHash.new
		hash[phrase] = 1
		count.word_frequency(phrase).must_equal hash
	end

	it "takes a two word phrase" do
		phrase = "Hello world"
		count = Count.new
		count.word_frequency(phrase)["hello"].must_equal 1
	end

	it "takes a phrase of the same words" do
		phrase = "Hello Hello"
		count = Count.new
		count.word_frequency(phrase)["Hello"].must_equal 2
	end

	it "punctuation doesn't matter" do
		phrase = "Hello, Hello"
		count = Count.new
		count.word_frequency(phrase)["HeLlo"].must_equal 2
	end

	it "passes with the test phrase" do
		phrase = File.read("./test/fixtures/phrase.txt")
		count = Count.new
		count.word_frequency(phrase)["answer"].must_equal 1
	end

	it "real snapchat app review" do
		phrase = File.read("./test/fixtures/review.txt")
		count = Count.new
		count.word_frequency(phrase)["favorite"].must_equal 1
	end
end

describe "Phrase frequency" do
	it "counts a single word phrase" do
		phrase = ("Hello Hello")
		count = Count.new
		count.phrase_frequency(phrase)["hello hello"].must_equal 1
	end

	it "counts a single word phrase" do
		phrase = ("Hello Hello Hello Hello")
		count = Count.new
		count.phrase_frequency(phrase)["hello hello"].must_equal 3
	end

	it "works with the example" do
		phrase = ("I like pie")
		count = Count.new
		count.phrase_frequency(phrase)["like pie"].must_equal 1
	end

	it "passes with the test phrase" do
		phrase = File.read("./test/fixtures/phrase.txt")
		count = Count.new
		count.phrase_frequency(phrase)["to week"].must_equal 1
	end

	it "real snapchat app review" do
		phrase = File.read("./test/fixtures/review.txt")
		count = Count.new
		count.phrase_frequency(phrase)["favorite app"].must_equal 1
	end
end
