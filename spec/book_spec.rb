require './book'
require './rental'

describe Book do
  describe '#initialize' do
    it 'Creates a new book' do
      book = Book.new('Harry Potter', 'J. K. Rowling')
      expect(book).to be_an_instance_of Book
    end
  end
  describe '#title' do
    it 'Returns the correct title' do
      book = Book.new('Harry Potter', 'J. K. Rowling')
      expect(book.title).to eq('Harry Potter')
    end
  end
  describe '#author' do
    it 'Returns the correct author' do
      book = Book.new('Harry Potter', 'J. K. Rowling')
      expect(book.author).to eq('J. K. Rowling')
    end
  end
  describe '#add_rental' do
    it 'Adds a new rental' do
      person_tst = Person.new(17, 1, 'Mike')
      book = Book.new('Harry Potter', 'J. K. Rowling')
      rental = book.add_rental(person_tst, '2023-06-15')
      expect(rental).to be_an_instance_of Rental
    end
  end
end
