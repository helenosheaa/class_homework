require("minitest/autorun")
require_relative("../class_team")

class TeamTest < Minitest::Test

  def test_team_name
    team = Team.new("WKU", ["Kyle Bailey","Gunner Britton","Will Bush","Demetrius Cain","Nicholas Coffey"],"Mike Sanford Jr.")
    assert_equal("WKU", team.team_name())
  end

  def test_players
    team = Team.new("WKU", ["Kyle Bailey","Gunner Britton","Will Bush","Demetrius Cain","Nicholas Coffey"],"Mike Sanford Jr.")
    assert_equal(["Kyle Bailey","Gunner Britton","Will Bush","Demetrius Cain","Nicholas Coffey"], team.players())
  end

  def test_coach
    team = Team.new("WKU", ["Kyle Bailey","Gunner Britton","Will Bush","Demetrius Cain","Nicholas Coffey"],"Mike Sanford Jr.")
    assert_equal("Mike Sanford Jr.", team.coach())
  end

  def test_set_coach
    team = Team.new("WKU", ["Kyle Bailey","Gunner Britton","Will Bush","Demetrius Cain","Nicholas Coffey"],"Mike Sanford Jr.")
    team.set_coach("Helen O'Shea")
    assert_equal("Helen O'Shea", team.coach())
  end

  def test_add_new_player
    team = Team.new("WKU", ["Kyle Bailey","Gunner Britton","Will Bush","Demetrius Cain","Nicholas Coffey"],"Mike Sanford Jr.")
    team.add_new_player("Roger Cray")
    assert_equal(["Kyle Bailey","Gunner Britton","Will Bush","Demetrius Cain","Nicholas Coffey", "Roger Cray"], team.players())
  end

  def test_find_player_by_name
    team = Team.new("WKU", ["Kyle Bailey","Gunner Britton","Will Bush","Demetrius Cain","Nicholas Coffey", "Roger Cray"],"Mike Sanford Jr.")
    player = find_player_by_name("Kyle Bailey")
    assert_equal(["Kyle Bailey"], team.players())
  end

end
