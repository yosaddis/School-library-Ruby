require './nameable'

class Person < Nameable
  attr_accessor :name, :age, :id, :rental

  def initialize(age, id, name = 'Unknown', parent_permission: true)
    super()
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rental = []
  end

  def can_use_services?
    return true if @parent_permission == true || of_age?
    false
  end

  def correct_name
    @name
  end

  def add_rental(book, date)
    Rental.new(date, self, book)
  end

  private

  def of_age?
    @age >= 18
  end
end
