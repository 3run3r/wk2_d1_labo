class Team
  attr_accessor :coach, :team_name, :players, :points

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_new_player(player)
    @players << player
  end

  def check_player_in_team(player_to_check)
    for player in @players
      if player == player_to_check
        return true
      end
    end
    return false
  end

  def change_points_if_win_or_lost(result)
    @points += 1 if result == "Win"
    @points if result == "Loss"
  end


end
