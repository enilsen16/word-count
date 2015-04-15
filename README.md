# word-count


To run:

```ruby
require './word_count'

# to search for a single word
word_count = Count.new
word_count.word_frequency(phrase)[word_you_are_searching_for]

# to search for a two word phrase
phrase_count = Count.new
phrase_count.phrase_frequency(phrase)[phrase_you_are_searching_for]

```

You can run this in either IRB or create a new file.
