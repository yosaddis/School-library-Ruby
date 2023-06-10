class Rental
  attr_accessor :book, :person, :date

  def initialize(date, person, book)
    @date = date
    @person = person
    @book = book

    person.rental << self
    book.rental << self
  end
end
