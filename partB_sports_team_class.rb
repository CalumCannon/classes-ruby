class SportsTeam

  attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end


  def add_new_player(name)
    @players.push(name)
  end

  def find_player(player_name)
    for player in @players
      if player == player_name
        return true
      end
    end

    return false
  end

  def game_played(result)
    if(result)
      @points += 3
    end
  end

end
