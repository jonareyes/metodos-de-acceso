# En este ejercicio vamos a aprender a conocer los métodos de acceso de ruby como write reader o si son los dos attr_accesor class Course 
# Dentro del código veras dos clases, simplifica estas clases siguiendo el método corto que ofrece Ruby, 
# piensa bien cuales puedes remplazar por attr_reader, attr_writer, o attr_accessor y hazlo. 

class Course 
  	attr_accessor :course_name
  	attr_reader :students
  def initialize(name)
    @course_name  = name
    @students   = []
  end

  def add_student(student)
    @students << student
  end
end


class Student
attr_accessor :name, :last_name, :campus
attr_reader :id
  @@id = 0

  def initialize(name, last_name, campus)
    @name     = name
    @last_name = last_name
    @campus = campus
    @id       = new_id
  end

  def new_id
    @@id += 1
  end
end


# NO MODIFICAR

# Driver Code ==============================================


math = Course.new("Math")

fernando = Student.new("Fernando","Romero", "Guadalajara")

math.add_student(fernando)

puts ("#{math.course_name} - #{math.students.first.name} #{math.students.first.last_name}: #{math.students.first.campus}") == "Math - Fernando Romero: Guadalajara"
puts math.respond_to?(:students=) == false
puts math.respond_to?(:students) == true
puts math.respond_to?(:add_student) == true
puts math.respond_to?(:course_name=) == true

fernando.name = "Not Rodrigo"
fernando.last_name = "GRRR"
fernando.campus = "Monterrey"

math.course_name = "Mathematics"

puts ("#{math.course_name} - #{math.students.first.name} #{math.students.first.last_name}: #{math.students.first.campus}") == "Mathematics - Not Rodrigo GRRR: Monterrey"
puts fernando.respond_to?(:id=) == false
puts fernando.respond_to?(:id) == true
puts fernando.respond_to?(:name) == true
puts fernando.respond_to?(:last_name=) == true