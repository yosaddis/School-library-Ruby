require './person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(age, specialization, name = 'Uknown', id = Random.rand(1..100), parent_permission: true)
    super(age, id, name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
