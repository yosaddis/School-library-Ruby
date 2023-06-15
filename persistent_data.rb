require './person'
require './student'
require './teacher'
require './rental'
require './book'
require 'json'

module PersistentData
  def self.read_persons
    people = []
    data = load_files('person.json')
    return people unless File.exist?('person.json') && (File.read('person.json') != '[]')

    data['students'].each do |student|
      new_student = Student.new(student['age'], student['name'], student['id'])
      people << new_student
    end
    data['teachers'].each do |teacher|
      new_teacher = Teacher.new(teacher['age'], teacher['name'], teacher['specialization'], teacher['id'])
      people << new_teacher
    end

    people
  end

  def self.read_books
    books = []
    data = load_files('books.json')
    return books unless File.exist?('books.json') && (File.read('books.json') != '[]')

    data.each do |book|
      new_book = Book.new(book['title'], book['author'])
      books << new_book
    end
    books
  end

  def self.read_rentals(persons, books)
    rentals = []
    data = load_files('rentals.json')
    return rentals unless File.exist?('rentals.json') && (File.read('rentals.json') != '[]')

    data.each do |rental|
      person = persons.select { |item| item.id == rental['person_id'] }
      book = books.select { |item| item.title == rental['book_title'] }
      new_rental = Rental.new(rental['date'], person[0], book[0])
      rentals << new_rental
    end
    rentals
  end

  def self.load_files(file)
    if File.exist?(file)
      File.open(file)
    else
      File.write(file, [])
    end
    JSON.parse(File.read(file))
  end

  def self.save_persons(persons)
    saved_persons = { students: [], teachers: [] }
    persons.each do |person|
      if person.is_a?(Student)
        student = {}
        student[:name] = person.name
        student[:age] = person.age
        student[:id] = person.id
        saved_persons[:students].push(student)
      elsif person.is_a?(Teacher)
        teacher = {}
        teacher[:name] = person.name
        teacher[:age] = person.age
        teacher[:specialization] = person.specialization
        teacher[:id] = person.id
        saved_persons[:teachers].push(teacher)
      end
    end
    File.write('./person.json', JSON.generate(saved_persons))
  end

  def self.save_books(books)
    saved_books = []
    books.each do |book|
      book_hash = {}
      book_hash[:author] = book.author
      book_hash[:title] = book.title
      saved_books.push(book_hash)
    end
    File.write('./books.json', JSON.generate(saved_books))
  end

  def self.save_rentals(rentals)
    saved_rentals = []
    rentals.each do |rental|
      rental_hash = {}
      rental_hash[:date] = rental.date
      rental_hash[:person_id] = rental.person.id
      rental_hash[:book_title] = rental.book.title
      saved_rentals.push(rental_hash)
    end
    File.write('./rentals.json', JSON.generate(saved_rentals))
  end
end
