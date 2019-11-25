require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestTeam < MiniTest::Test
  def test_can_get_team_name
    team = Team.new("Milan", ["Maldini", "Kaka"], "Ancelotti")
    assert_equal("Milan", team.team_name)
  end

  def test_can_get_players
    team = Team.new("Milan", ["Maldini", "Kaka"], "Ancelotti")
    assert_equal(["Maldini", "Kaka"], team.players)
  end
end
