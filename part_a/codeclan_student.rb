class CodeclanStudent

  attr_accessor :name, :cohort, :favourite_language

  def initialize(name, cohort, favourite_language)
    @name = name
    @cohort = cohort
    @favourite_language = favourite_language
  end

  def talk
    return "I can talk!"
  end

  def say_favourite_language
    return "I like #{@favourite_language}"
  end

  # def get_student_name
  #   return @name
  # end


end
