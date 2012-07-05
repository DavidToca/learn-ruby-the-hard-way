class Song
  
  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song
    @lyrics.each{|line| puts line}
  end
  

end

#gbday_lyric =["Happy birthday to you", "I don't want to get sued","So I'll stop right there"]


#happy_bday = Song.new(gbday_lyric)

#bop_lyric = ["They rally around the family","With pockets full of shells"]

#bull_on_parade = Song.new(bop_lyric)

#happy_bday.sing_me_a_song

#bull_on_parade.sing_me_a_song

puts '-' * 10

pkmn_lyric = ["I wanna be the very best",
"Like no one ever was",
"To catch them is my real test",
"To train them is my cause",
"\n",
"I will travel across the land",
"Searching far and wide",
"Each Pokemon to understand",
"The power that's inside",
"\n",
"Pokemon, its you and me",
"I know its my destiny",
"Pokemon, oh, you're my best friend",
"In a world we must defend",
"Pokemon, a heart so true",
"Our courage will pull us through",
"\n",
"You teach me and I'll teach you",
"Pokemon, gotta catch 'em all",
"\n",
"Every challenge along the way",
"With courage I will face",
"I will battle every day",
"To claim my rightful place",
"\n",
"Come with me, the time is right",
"There's no better team",
"Arm in arm we'll win the fight",
"It's always been our dream "]

pokemon = Song.new(pkmn_lyric)

pokemon.sing_me_a_song
