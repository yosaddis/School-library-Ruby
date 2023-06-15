require './person'

class Student < Person
  def initialize(age, name, id = Random.rand(1..100), parent_permission: true)
    super(age, id, name, parent_permission: parent_permission)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def add_classroom(classroom)
    @classroom = classroom
    classroom.students << self unless classroom.students.include?(self)
  end
end
