class Rental
  attr_accessor :book, :student, :date

  def initialize(date)
    @date = date
    @person = person
    person.add_rental(self)
    @book = book
    book.add_rental(self)
  end
end
