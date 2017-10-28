# Your code goes here!
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(word_arr)

    word_arr.each{|e|
      matching = false
      puts e
      if e.size == word.size
        matching = true
        puts "size match"
        e.split('').each{|i|
         puts i
         puts e.count(i)
         puts word.count(i)
         puts matching
         if e.count(i) != word.count(i)
           matching == false
         end
        }
      end
      if matching == true
        return true
      end
    }
    return false
  end

end

apple = Anagram.new("apple")
puts apple.match(["bob","abcde","lappe"])
