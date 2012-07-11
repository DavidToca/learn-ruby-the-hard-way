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

     sentence.push(Pair.new(:direction,word)) if @words.include? word
     sentence.push(Pair.new(:verb,word)) if @verbs.include? word
     sentence.push(Pair.new(:stop,word)) if @stop_words.include? word
     sentence.push(Pair.new(:noun,word)) if @nouns.include? word
     sentence.push(Pair.new(:number,word.to_i)) if word.match(@number_pattern)
     
     

    end
    
    sentence
  end

end
