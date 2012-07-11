require  '../lib/lexicon'

#require "./lexicon.rb"

describe LexiconScan do

  before :each do
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


end

