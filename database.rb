# Create a class for people
class Person
  attr_accessor :name, :phone_number, :address, :position, :salary, :slack_account, :github_account

  # Initialize  varible needed to be tracked.
  def initialize(name)
    @name = name
  end
end

#   # Make an array to call all of the names created
class Database
  def initialize
    @people = []
  end

  # Ask for a person
  def person_prompt
    puts "We know all the people. Do you want to Add (A), Seach (S), or Delete (D) someone?"
    gets.chomp
  end

  # define the Add, Search, and Delete method into the  people class
  def menu
    loop do
      response = person_prompt
      case response

      when "A"
        puts "Name"
        name = gets.chomp

        person = Person.new(name)

        puts "Phone Number"
        person.phone_number = gets.chomp

        puts "Adress: "
        person.address = gets.chomp

        puts "Position (Instructor, Ops, Campus Director, Student): "
        person.position = gets.chomp

        puts "Salary: "
        person.salary = gets.chomp.to_i

        puts "Slack Account: "
        person.slack_account = gets.chomp

        puts "Github Account: "
        person.github_account = gets.chomp

        @people << person

      when "S"
        count = 0

        puts "Who are you looking for?"
        name_search_prompt = gets.chomp
        loop do
          if count >= @people.length
            puts "I have no idea who you are talking about"
            break
          end
          person = @people[count]
          if name_search_prompt == person.name
            puts "You found #{name}"
            puts person.name
            puts person.phone_number
            puts person.address
            puts person.position
            puts person.slack_account
            puts person.github_account
            break
          end

          count = count + 1
        end

      when "D"
        count = 0

        puts "Who are we getting rid of"
        delete_name_prompt = gets.chomp
        loop do
          if count >= @people.length
            puts "I can't find that person"
            break
          end

          person = @people[count]
          if delete_name_prompt == person.name
            puts "I am deleting #{person.name} frm the database"
            @people.delete(person)
            break
          end

          count = count + 1
        end
      else
        puts "Try Again"
      end
    end
  end
end

my_database = Database.new
my_database.menu
