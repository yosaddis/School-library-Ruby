require './person'
require './rental'

describe Person do
  describe '#initialize' do
    it 'Creates a new person' do
      person = Person.new(17, 1, 'Mike')
      expect(person).to be_an_instance_of Person
    end
  end
  describe '#name' do
    it 'Returns the correct name' do
      person = Person.new(17, 1, 'Mike')
      expect(person.name).to eq('Mike')
    end
  end
  describe '#age' do
    it 'Returns the correct age' do
      person = Person.new(17, 1, 'Mike')
      expect(person.age).to eq(17)
    end
  end
  describe '#id' do
    it 'Returns the correct id' do
      person = Person.new(17, 1, 'Mike')
      expect(person.id).to eq(1)
    end
  end
  describe '#rental' do
    it 'Returns the correct rental' do
      person = Person.new(17, 1, 'Mike')
      expect(person.rental).to eq([])
    end
  end
  describe '#can_use_services?' do
    it 'Returns the correct can_use_services?' do
      person = Person.new(17, 1, 'Mike')
      expect(person.can_use_services?).to eq(true)
    end
  end
  describe '#correct_name' do
    it 'Returns the correct correct_name' do
      person = Person.new(17, 1, 'Mike')
      expect(person.correct_name).to eq('Mike')
    end
  end
  describe '#add_rental' do
    it 'Adds a new rental' do
      person = Person.new(17, 1, 'Mike')
      book = Book.new('Harry Potter', 'J.K. Rowling')
      rental_tst = person.add_rental(book, '2019-05-05')
      expect(rental_tst).to be_an_instance_of Rental
    end
  end
end
