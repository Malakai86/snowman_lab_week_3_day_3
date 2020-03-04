require( 'minitest/autorun' )
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative( '../game' )
require_relative( '../hiddenword' )
require_relative( '../player' )
class TestPlayer < MiniTest::Test

def setup()
  @player = Player.new("Eugene")
end

def test_player_name
  assert_equal("Eugene", @player.name)
end


end
