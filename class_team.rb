class Team

  attr_reader(:team_name, :players)
  attr_accessor(:coach)

  def initialize(team_name, players, coach)
      @team_name = team_name
      @players = players
      @coach = coach
  end

  def get_team_name()
    return @team_name
  end

  def get_players()
    return @players
  end

  def get_coach()
    return @coach
  end

  def set_coach(new_coach)
   return @coach = new_coach
  end

  def add_new_player(new_player)
    @players.push(new_player)
  end

  def find_player_by_name(players, name)
    for player_name in @players
      if player_name == name
        return player_name
      end
    end
  end

end
