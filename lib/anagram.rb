# Your code goes here!
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(word_arr)
    match_array = []
    word_arr.each{|e|
      matching = false
      if e.size == word.size
        matching = true
        e.split('').uniq.each{|i|
         if e.count(i) != word.count(i)
           matching = false
         end
        }
      end
      if matching == true
        match_array << e
      end
    }
    return match_array
  end

end

listen = Anagram.new("listen")
puts listen.match(%w(enlists google inlets banana))
