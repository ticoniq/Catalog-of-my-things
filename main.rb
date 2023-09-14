require_relative 'app'

class Main
  def initialize
    @app = App.new
    prompt
  end

  def prompt
    puts 'Catalogue of things!'
    loop do
      display_options
      option = take_input
      if option >= 1 && option < 7
        @app.run_till6(option)
      else
        @app.run_more_than6(option)
      end
      break if option == 10
    end
  end

  def display_options
    puts 'Please any one opt: '
    puts '1. - List all books'
    puts '2. - List all music albums'
    puts '3. - List all games'
    puts '4. - List all genres'
    puts '5. - List all labels'
    puts '6. - List all authors'
    puts '7. - Add book'
    puts '8. - Add a music album'
    puts '9. - Add a game'
    puts '10. - Exit'
  end

  def take_input
    print 'Enter a number: '
    option = gets.chomp.to_i
    while option.nil? || option < 1 || option > 10
      puts 'Please enter a number!'
      print 'Enter a number: '
      option = gets.chomp.to_i
    end
    option
  end
end

Main.new
