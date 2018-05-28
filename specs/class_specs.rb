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
end
