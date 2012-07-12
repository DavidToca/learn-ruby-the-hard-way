require  '../lib/lexicon'

describe LexiconScan do

  before :all do
    @lexicon = LexiconScan.new
    Pair = LexiconScan::Pair
  end

  it "should parse all directions" do

      north = Pair.new :direction, 'north'
      south = Pair.new :direction ,'south'
      east = Pair.new :direction ,'east'

      all_directions = [north, south, east]

      result_scan = @lexicon.scan("north")

      result_scan.should == [north]

      result_scan = @lexicon.scan("north south east")

      result_scan.should == all_directions

  end

  it "should parse al verbs" do

    go  = Pair.new :verb, 'go'

    kill = Pair.new :verb, 'kill'

    eat = Pair.new :verb, 'eat'

    go_kill_eat = [go,kill,eat]

    result_scan = @lexicon.scan("go")

    result_scan.should == [go]

    result_scan = @lexicon.scan("go kill eat")

    result_scan.should == go_kill_eat

    
  end

  it "should parse stops" do
    
    the = Pair.new(:stop, 'the')
    in_stop = Pair.new(:stop, 'in')
    of = Pair.new(:stop,'of')
    
    the_in_of = [the, in_stop, of]

    result_scan = @lexicon.scan("the")

    result_scan.should == [the]

    result_scan = @lexicon.scan("the in of")

    result_scan ==  the_in_of
    
  end

  it "should parse all nouns" do
    
    bear = Pair.new(:noun, 'bear')

    princess = Pair.new(:noun,'princess')

    bear_princess = [bear, princess]

    result_scan = @lexicon.scan("bear")

    result_scan.should == [bear]

    result_scan = @lexicon.scan("bear princess")

    result_scan.should == bear_princess

  end

  it "should parse all numbers" do

    number1 = Pair.new(:number,91234)
    number2 = Pair.new(:number,3)
    
    numbers = [number2, number1]

    result_scan = @lexicon.scan("91234")

    result_scan.should == [number1]

    result_scan = @lexicon.scan("3 91234")
    
    result_scan.should == numbers

  end

  it "should parse to error words that are not in direction, verbs, stop words, nouns and numbers" do

    ias  = Pair.new(:error,'IAS')

    bear = Pair.new(:noun,'bear')

    princess = Pair.new(:noun,'princess')

    sentence = [ bear, ias, princess]

    result_scan = @lexicon.scan("ASDASDASD")

    result_scan.should == [Pair.new(:error, 'ASDASDASD')]

    result_scan = @lexicon.scan("bear IAS princess")

    result_scan.should == sentence

  end


  it "should parse upper and downcase" do

    north = Pair.new(:direction,'NorTh')

    go = Pair.new(:verb,'gO')

    from = Pair.new(:stop,'FrOM')

    result_scan = @lexicon.scan("NorTh gO FrOM")

    sentence = [north, go, from]

    result_scan.should == sentence

  end

end
