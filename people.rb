class Person

attr_accessor :last_name, :first_name

  def initialize(first_name, last_name)
     @first_name = first_name
     @last_name = last_name
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  def greetings
    puts "hi my name is #{full_name}"

end


class Student < Person

  def learn
    puts "I get it!"
  end


end

class Instructor < Person

  def teach
    puts "Everything in Ruby is an Object!"
  end

end
