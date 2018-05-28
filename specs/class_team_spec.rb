require("minitest/autorun")
require_relative("../class_team")

class TeamTest < Minitest::Test

  def test_team_name
    team = Team.new("WKU", ["Kyle Bailey","Gunner Britton","Will Bush","Demetrius Cain","Nicholas Coffey"],"Mike Sanford Jr.")
    assert_equal("WKU", team.get_team_name())
  end

  def test_players
    team = Team.new("WKU", ["Kyle Bailey","Gunner Britton","Will Bush","Demetrius Cain","Nicholas Coffey"],"Mike Sanford Jr.")
    assert_equal(["Kyle Bailey","Gunner Britton","Will Bush","Demetrius Cain","Nicholas Coffey"], team.get_players())
  end

  def test_coach
    team = Team.new("WKU", ["Kyle Bailey","Gunner Britton","Will Bush","Demetrius Cain","Nicholas Coffey"],"Mike Sanford Jr.")
    assert_equal("Mike Sanford Jr.", team.get_coach())
  end

  def test_set_coach
    team = Team.new("WKU", ["Kyle Bailey","Gunner Britton","Will Bush","Demetrius Cain","Nicholas Coffey"],"Mike Sanford Jr.")
    team.set_coach("Helen O'Shea")
    assert_equal("Helen O'Shea", team.get_coach())
  end

end
