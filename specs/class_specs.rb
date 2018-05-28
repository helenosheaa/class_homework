require("minitest/autorun")
require_relative("../class")

class StudentTest < Minitest::Test

  def test_student_name
    student = Student.new("Helen", 22)
    assert_equal("Helen", student.get_student_name())
  end

  def test_cohort
    student = Student.new("Helen", 22)
    assert_equal(22, student.get_cohort())
  end

  def test_set_student_name
    student = Student.new("Helen", 22)
    student.set_student_name("Jesus")
    assert_equal("Jesus", student.get_student_name())
  end

  def test_set_cohort
    student = Student.new("Helen", 22)
    student.set_cohort(21)
    assert_equal(21, student.get_cohort())
  end

  def test_talk
    student = Student.new("Helen", 22)
    assert_equal("I can talk!", student.talk())
  end

  def test_favorite_language
    student = Student.new("Helen", 22)
    assert_equal("I love Ruby",
    student.favorite_language("Ruby"))
  end

end
