#require "lexicon/version"

class LexiconScan

  Pair = Struct.new(:token,:word)
  
  def initialize
    
    @words = %w[north south east west down up left right back]
    @verbs = %w[go stop kill eat]
    @stop_words = %w[the in of from at it]
    @nouns = %w[door bear princess cabinet]
    @number_pattern = "[0-9]+"
    
  end

  def scan(input)
    
    sentence = []

    words = input.split
    
    words.each do |word|
      puts word
      puts @words[0]
#      puts @words.include(word)
      
      sentence.push(Pair.new(:direction,word)) if (@words.include?(word))
      
    end
    
    sentence
  end

end
