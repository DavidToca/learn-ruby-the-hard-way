require 'test/unit'
require_relative "../lib/lexicon"

class LexiconTest < Test::Unit::TestCase

  Pair = Lexicon::Pair

  @@lexicon = Lexicon.new

  def test_directions
    assert_equal([Pair.new(:direction,'north')], @@lexicon.scan("north"))
    result = @@lexicon.scan("north south east")
    assert_equal(result, [Pair.new(:direction,'north'), Pair.new(:direction,'south'),Pair.new(:direction,'east') ])

  end

  def test_verbs
    assert_equal(@@lexicon.scan("the"), [Pair.new(:stop,'the')])
    result = @@lexicon.scan("the in of")
    assert_equal(result, [Pair.new(:stop,'the'), Pair.new(:stop,'in'), Pair.new(:stop,'of')])

  end

  def test_stops
    assert_equal(@@lexicon.scan("the"), [Pair.new(:stop,'the')])
    result = @@lexicon.scan("the in of")
    assert_equal(result, [Pair.new(:stop,'the'), Pair.new(:stop,'in',Pair.new(:stop,'of'))])
  end

  def test_nouns
  assert_equal(@@lexicon.scan("bear"), [Pair.new(:noun,'bear')])
  result = @@lexicon.scan("bear princess")
  assert_equal(result, [Pair.new(:noun,'bear') , Pair.new(:noun,'princess')])

  end

  def test_numbers
    assert_equal(@@lexicon.scan("1234"), [Pair.new(:number,1234)])
    result = @@lexicon.scan("3 912345")
    assert_equal(result,[Pair.new(:number,3) Pair.new(:number, 91234)])
  end

  def test_errors
    assert_equal(@@lexicon.scan("ASDFASDFASDF"), [Pair.new(:error,'ASDFASDFASDF')])
    result = @@lexicon.scan("bear IAS princess")
    assert_equal(result, [Pair.new(:noun,'bear'), Pair.new(:error,'IAS'), Pair.new(:noun,'princess')])
  end

end
