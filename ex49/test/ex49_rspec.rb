require_relative '../lib/ex49.rb'
require_relative '../../lexicon/lib/lexicon.rb'

describe Parser do

  before :all do

    @lexicon = LexiconScan.new

    Pair = LexiconScan::Pair

  end
  

  it "should parse verb" do
    
    word_list = @lexicon.scan("kill")

    kill = Pair.new(:verb,"kill")

    match_word = Parser.parse_verb(word_list)

    match_word.should == kill

    word_list = @lexicon.scan("go kill")

    go = Pair.new(:verb,"go")

    match_word = Parser.parse_verb(word_list)

    match_word.should == go

  end
  
  it "should parse an object " do

    word_list = @lexicon.scan("bear")

    bear = Pair.new(:noun,"bear")

    match_word = Parser.parse_object(word_list)

    match_word.should == bear

    north = Pair.new(:direction,"north")

    word_list = @lexicon.scan("north")

    match_word = Parser.parse_object(word_list)

    match_word.should == north

    
  end

  it "should parse subject" do

    word_list = @lexicon.scan("go north")

    go = Pair.new(:verb,"go")

    bear = Pair.new(:noun,"bear")

    north = Pair.new(:direction,"north")

    sentence_result = Parser.parse_subject(word_list, bear)

    sentence = Sentence.new(bear,go,north)

    sentence_result.should == sentence
    
  end

  it "should parse a sentence" do

    word_list = @lexicon.scan("bear go north")

    go = Pair.new(:verb,"go")

    bear = Pair.new(:noun,"bear")

    north = Pair.new(:direction,"north")

    sentence_result = Parser.parse_sentence(word_list)

    sentence = Sentence.new(bear,go,north)

    sentence_result.should == sentence
    
  end

  it "should put the player as a standard subject if there's no noun in the word list" do

    word_list = @lexicon.scan("go north")

    go = Pair.new(:verb,"go")

    north = Pair.new(:direction,"north")

    player = Pair.new(:noun, "player")

    sentence_result = Parser.parse_sentence(word_list)

    sentence = Sentence.new(player,go,north)

    sentence_result.should == sentence
    
  end


  it "should fail when sentence doesn't start" do

    word_list = @lexicon.scan("badword go north")
    
    expect { Parser.parse_sentence(word_list)}.should raise_error

  end

  it "should fail when use parse verb on something diferent that a verb" do

    word_list = @lexicon.scan("asdf go")

    expect { Parser.parse_sentence(word_list)}.should raise_error

  end


end
