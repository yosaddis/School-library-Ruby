require './person'
require './student'
require './teacher'
require './rental'
require './book'
require './class_room'

class App
  def initialize()
    # @persons = persons
    # @books = books
    # @rentals = rentals
  end

  def list_all_persons(persons)
    puts 'Person List is empty. Please add a person first.' if persons.empty?
    persons.each do |person|
      puts "Name: #{person.name}, Age: #{person.age}"
    end
  end

  def list_all_books(books)
    puts 'Book List is empty. Please add a book first.' if books.empty?
    books.each do |book|
      puts "Title: #{book.title}, Author: #{book.author}"
    end
  end

  def add_person(persons)
    puts 'Do you want to create ?'
    puts '1. Student'
    puts '2. Teacher'
    input = gets.chomp.to_i
    if input == 1
      add_student(persons)
    elsif input == 2
      add_teacher(persons)
    else
      puts 'Invalid option. Please try again'
    end
  end

  def add_student(persons)
    puts 'Creating a student'
    puts 'Name : '
    name = gets.chomp
    puts 'Age : '
    age = gets.chomp.to_i
    puts 'Has parent permission? [Y/N] : '
    parent_permission = gets.chomp.downcase
    case parent_permission
    when 'y'
      student = Student.new(age, name, parent_permission: true)
      persons << student
    when 'n'
      student = Student.new(age, name, parent_permission: false)
      persons << student
    else
      puts 'Invalid option. Please try again.'
      add_student(persons)
    end
  end

  def add_teacher
    puts 'Creating a teacher'
    puts 'Age : '
    age = gets.chomp.to_i
    puts 'Name : '
    name = gets.chomp
    puts 'Specialization : '
    specialization = gets.chomp
    teacher = Teacher.new(age, name, specialization)
    persons << teacher
    puts "Teacher created successfully with ID #{teacher.id}"
  end

  def add_book(books)
    puts 'Creating a book'
    puts 'Title : '
    title = gets.chomp
    puts 'Author : '
    author = gets.chomp
    book = Book.new(title, author)
    books.push(book)
    puts "Book #{title} created successfully"
  end

  def add_rentals(rentals, books, persons)
    puts 'Select which book you want to rent by its ID '
    books.each_with_index { |book, index| puts "#{index}. Title: #{book.title}, Author: #{book.author}" }

    book_id = gets.chomp.to_i

    puts 'Select which person will rent the book by its ID '
    persons.each_with_index { |person, index| puts "#{index}. Name: #{person.name}, Age: #{person.age}" }

    person_id = gets.chomp.to_i

    puts 'Date : '
    date = gets.chomp.to_s

    rental = Rental.new(date, persons[person_id], books[book_id])
    rentals << rental

    puts 'Rental created successfully'
  end

  def list_all_rentals(rentals, persons)
    puts 'List is empty. Please add a rental' if rentals.empty?
    puts 'Enter the ID of the rental you want to see'
    persons.each { |person| puts "ID: #{person.id}, Name: #{person.name}" }

    id = gets.chomp.to_i
    puts 'Rented books:'
    rentals.each do |rental|
      if rental.person.id == id
        print "Person: #{rental.person.name} Date: #{rental.date} "
        puts "Book: #{rental.book.title}, Author: #{rental.book.author}"
      else
        puts 'No rentals found'
      end
    end
  end
end
