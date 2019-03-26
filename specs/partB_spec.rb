require('minitest/autorun')
require('minitest/rg')
require_relative('../partB_sports_team_class.rb')

class TestSportsTeam < MiniTest::Test

  def setup
    @test_team = SportsTeam.new("Celtic", ["p1", "p2", "p3"], "Martin O'Neill")
  end

  def test_get_team_name
    assert_equal("Celtic", @test_team.team_name)

  end

  def test_change_coach
    @test_team.coach = "Bob"
    assert_equal("Bob", @test_team.coach)
  end

  def test_add_new_player
    @test_team.add_new_player("p4")
    assert_equal(4, @test_team.players.count)
  end

  def test_if_player_in_team_true
    assert_equal(true, @test_team.find_player("p1"))
  end

  def test_if_player_in_team_false
    assert_equal(false, @test_team.find_player("p99"))
  end

  def test_win
    @test_team.game_played(true)
    assert_equal(3, @test_team.points)
  end

  def test_lose
    @test_team.game_played(false)
    assert_equal(0, @test_team.points)
  end

end
