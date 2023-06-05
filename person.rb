class Person
  attr_accessor :name, :age
  attr_accessor :id

  def initialize(name = 'Unknown', age, parent_permission: true)
    @id = Random.rand(1..100)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    return true if @parent_permission == true || of_age?

    false
  end

  private

  def of_age?
    @age >= 18
  end
end
