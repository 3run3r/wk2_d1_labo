require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestTeam < MiniTest::Test
  def test_can_get_team_name
    team = Team.new("Milan", ["Maldini", "Kaka"], "Ancelotti", 0)
    assert_equal("Milan", team.team_name)
  end

  def test_can_get_players
    team = Team.new("Milan", ["Maldini", "Kaka"], "Ancelotti", 0)
    assert_equal(["Maldini", "Kaka"], team.players)
  end

  def test_can_get_coach
    team = Team.new("Milan", ["Maldini", "Kaka"], "Ancelotti", 0)
    assert_equal("Ancelotti", team.coach)
  end

  def test_can_get_points
    team = Team.new("Milan", ["Maldini", "Kaka"], "Ancelotti", 0)
    assert_equal(0, team.points)
  end

  def test_can_set_new_coach
    team = Team.new("Milan", ["Maldini", "Kaka"], "Ancelotti", 0)
    team.coach = "Mourinho"
    assert_equal("Mourinho", team.coach)
  end

  def test_can_add_new_player_to_players
    team = Team.new("Milan", ["Maldini", "Kaka"], "Ancelotti", 0)
    team.add_new_player("Ronaldo")
    assert_equal(["Maldini", "Kaka", "Ronaldo"], team.players)
  end

  def test_is_player_in_team
    team = Team.new("Milan", ["Maldini", "Kaka"], "Ancelotti", 0)
    assert_equal(true, team.check_player_in_team("Kaka"))
  end

  def test_if_team_has_won
    team = Team.new("Milan", ["Maldini", "Kaka"], "Ancelotti", 0)
    team.change_points_if_win_or_lost("Win")
    assert_equal(1, team.points)
  end

  def test_if_team_has_lost
    team = Team.new("Milan", ["Maldini", "Kaka"], "Ancelotti", 0)
    team.change_points_if_win_or_lost("Loss")
    assert_equal(0, team.points)
  end

end
