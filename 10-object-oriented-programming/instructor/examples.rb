# MUST have a capital first letter
class Person

  # INSTANCE VARIABLE

  def initialize(first_name, last_name)
    # Memorize the input
    @first_name = first_name
    @last_name  = last_name
  end

  # INSTANCE METHOD

  # Attribute Readers
  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  # Attribute Writers
  def first_name=(first_name)
    @first_name = first_name
  end

  def last_name=(last_name)
    @last_name = last_name
  end


  def full_name
    "#{ first_name } #{ @last_name }"
  end

  def greetings
    "Hi, my name is #{ full_name }"
  end

end
