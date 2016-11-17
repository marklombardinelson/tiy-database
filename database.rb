computer_number = rand(1..100)
# # Create a class for people
# class Person
#   attr_accessor :name, :phone_number, :address, :position, :salary, :slack_account_name, :github_account_name
#
#   # Initialize  varible needed to be tracked.
#   def initialize(name)
#     @name = name
#   end
# end
#   # Make an array to call all of the names created
# class AnswerClass
#   def initialize
#     @people = []
#   end
# end
#
  # Ask for a person
def person_prompt
  puts "We have #{@people.length}. Do you want to (A), (S), or (D)?"
  guess = gets.chomp
end
#
# # define the Add, Search, and Delete method into the  people class
# def add_name_prompt
#   loop do
#     answer = person_prompt
#     case answer
#
#     when "A"
#       @name = Person.new
#
#       puts "Name"
#       person.name = gets.chomp
#
#       puts "Phone Number"
#       person.phone_number = gets.chomp
#
#       puts "Adress: "
#       person.address = gets.chomp
#
#       puts "Position (Instructor, Ops, Campus Director, Student): "
#       person.position = gets.chomp
#
#       puts "Salary: "
#       person.salary = gets.chomp.to_i
#
#       puts "Slack Account: "
#       person.slack_account = gets.chomp
#
#       puts "Github Account: "
#       person.github_account = gets.chomp
#
#        answer_class = AnswerClass.new
#        answer_class.add_name_prompt
#
#       @people << person
#
#     when "S"
#       puts "Who are you looking for?"
#       name_search = gets.chomp
#       count = 0
#       loop do
#         if count >= @people.length
#           puts "I have no idea who you are talking about"
#           break
#         end
#         @name = @people[count]
#         if name_search == person.name
#           puts "You found #{@name}"
#           puts person.name
#           puts person.phone_number
#           puts person.address
#           puts person.position
#           puts person.slack_account
#           puts person.github_account
#         break
#       end
#
#       count = count + 1
#     end
#
#     when "D"
#       puts "Who are we getting rid of"
#       delete_name = gets.chomp
#
#       count = 0
#       loop do
#         if count >= people.length
#           puts "I can't find that person"
#           break
#       end
#       break
#     person = @people[count]
#       if delete_name == person.name
#         @people.delete(person)
#       end
#         count = count + 1
#        end
#      else
#        puts "Try Again"
#      end
#    end
#  end
