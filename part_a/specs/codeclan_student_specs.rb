require('minitest/autorun')
require('minitest/reporters')
require_relative('../codeclan_student')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestCodeclanStudent < MiniTest::Test

  def test_can_get_student_name
    student = CodeclanStudent.new("Matteo", "E36", "Java")
    assert_equal("Matteo", student.name)
  end

  def test_can_get_student_cohort
    student = CodeclanStudent.new("Matteo", "E36", "Java")
    assert_equal("E36", student.cohort)
  end

  def test_can_set_student_name
    student = CodeclanStudent.new("Matteo", "E36", "Java")
    student.name = "James"
    assert_equal("James", student.name)
  end

  def test_can_set_student_cohort
    student = CodeclanStudent.new("Matteo", "E36", "Java")
    student.cohort = "E35"
    assert_equal("E35", student.cohort)
  end

  def test_student_can_talk
    student = CodeclanStudent.new("Matteo", "E36", "Java")
    assert_equal("I can talk!", student.talk)
  end

  def test_can_say_favourite_language
    student = CodeclanStudent.new("Matteo", "E36", "Java")
    student.favourite_language = "Ruby"
    assert_equal("I like Ruby", student.say_favourite_language())
  end

end
