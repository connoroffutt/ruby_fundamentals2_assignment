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
    puts "Hi my name is #{ full_name }! Nice to meet you!"
  end
end



class Instructor < Person

  def full_name
    "Instructor #{ super }"
  end

  def teach
    puts "Everything in Ruby is an Object!"
  end

end

class Student < Person

  def learn
    puts "I get it!"
  end


end

chris = Instructor.new("Chris","Roberts")
cristina = Student.new("Cristina","Angelo")

puts cristina.greetings
puts chris.greetings
puts chris.teach
puts cristina.learn

#puts chris.learn
#puts cristina.teach
  # the above code will not work as even though they are both considered a person only cristina is considered a student and chris is a teacher.
  
