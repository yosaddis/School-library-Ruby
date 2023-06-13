require './app'

@persons = []
@books = []
@rentals = []

def main
  home_page
end

def home_page
  puts 'Welcome to Library App!'
  until list_of_options
    input = gets.chomp.to_i
    if input == 7
      puts 'Thank you for using Library App!'
      exit
    end

    option input
  end
end

def list_of_options
  puts
  puts 'Please select an option by entering a number:'
  puts '1. List all books'
  puts '2. List all people'
  puts '3. Create a person'
  puts '4. Create a book'
  puts '5. Create a rental'
  puts '6. List all rentals for a given person id'
  puts '7. Exit'
  puts
end

def option(input)
  app = App.new
  case input
  when 1
    app.list_all_books(@books)
  when 2
    app.list_all_persons(@persons)
  when 3
    app.add_person(@persons)
  when 4
    app.add_book(@books)
  when 5
    app.add_rentals(@rentals, @books, @persons)
  when 6
    app.list_all_rentals(@rentals, @persons)
  else
    puts 'Invalid option. Please try again.'
  end
end

main
