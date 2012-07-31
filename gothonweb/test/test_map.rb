require 'test/unit'

require_relative '../lib/map'
require_relative '../lib/game'

class MyUnitTest < Test::Unit::TestCase


  def setup
    game = Game.new
    @start = game.start
    @generic_death = game.generic_death
    @laser_weapon_armory = game.laser_weapon_armory
    @central_corridor_shoot_death = game.central_corridor_shoot_death 
    @central_corridor_dodge_death = game.central_corridor_dodge_death 
    @the_bridge = game.the_bridge 
    @the_bridge_death = game.the_bridge_death
    @escape_pod = game.escape_pod
    @the_end_winner = game.the_end_winner
    @the_end_loser = game.the_end_loser
  end

  def test_room
    gold = Room.new("GoldRoom","This room has gold in it you can grab.
There's a door to the north.")
    assert_equal(gold.name,"GoldRoom")
    assert_equal(gold.paths,{})

  end

  def test_room_paths
    center = Room.new("Center","Test room in the center.")
    north = Room.new("North","Test room in the north.")
    south = Room.new("South","Test room in the south.")

    center.add_paths({north:  north, south: south})
    assert_equal(center.go(:north),north)
    assert_equal(center.go(:south),south)

  end

  def test_map
    start = Room.new("Start","You can go west and down a hole.")
    west = Room.new("Tres", "There are trees here, you can go east.")
    down = Room.new("Dungeon","It's dark down here, you can go up.")
    
    start.add_paths(west:  west, down: down)
    west.add_paths(east: start)
    down.add_paths(up: start)
    
    assert_equal start.go(:west) , west
    assert_equal start.go(:west).go(:east) , start
    assert_equal start.go(:down).go(:up) , start
    
  end


  def test_gothon_game_map

    assert_equal(@start.go('shoot!'), @central_corridor_shoot_death)
    assert_equal(@start.go('dodge!'), @central_corridor_dodge_death )

    room = @start.go('tell a joke')
    assert_equal(room, @laser_weapon_armory)

  end

  def test_laser_weapon_armory
    
    assert_equal(@laser_weapon_armory.go('0132'),@the_bridge )
    assert_equal(@laser_weapon_armory.go('cualquiercosa'),@generic_death )

  end
  
  def test_the_bridge
    
    assert_equal(@the_bridge.go('throw the bomb'), @the_bridge_death)
    assert_equal(@the_bridge.go('slowly place the bomb'), @escape_pod)
    assert_equal(@the_bridge.go('something else'), @the_bridge)

  end

  def test_escape_pod
    
    assert_equal(@escape_pod.go('2'),@the_end_winner)
    assert_equal(@escape_pod.go('5'),@the_end_loser)


  end
end
