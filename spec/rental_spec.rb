require './rental'

describe Rental do
  it 'It should create a new rental and verify the date' do
    person = Person.new(17, 1, 'Mike')
    book = Book.new('Harry Potter', 'J.K. Rowling')
    rental = Rental.new('2023-06-15', person, book)
    expect(rental).to be_an_instance_of Rental
    expect(rental.date).to eq('2023-06-15')
  end
end
