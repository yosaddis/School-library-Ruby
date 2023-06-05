require './person.rb'

class Teacher < Person
  def initialize(age, specialization, name = 'Uknown', parent_permission: true)
    super(name, age, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
