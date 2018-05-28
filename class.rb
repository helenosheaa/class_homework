class Student

  # attr_reader(:student_name, :cohort)

  def initialize(student_name, cohort)
      @student_name = student_name
      @cohort = cohort
    end

  def get_student_name()
    return @student_name
  end

  def get_cohort()
    return @cohort
  end

  def set_student_name(new_student_name)
   return @student_name = new_student_name
  end

  def set_cohort(new_cohort)
    return @cohort = new_cohort
  end

end
