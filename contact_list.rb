require_relative 'contact'
# require_relative 'contact_database'
require_relative 'setup'
require 'active_record'

class Application
  def initialize
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts
    puts "Here is a list of available commands:"
    puts "    new  - Create a new contact"
    puts "    list - List all contacts"
    puts "    show - Show a contact"
    puts "    find - Find a contact"
    puts "    delete - delete a contact"
    choice = gets.chomp.to_sym

    case choice
    when :new
      puts "Please enter the new contact's first name:"
      firstname = gets.chomp
      puts "Please enter the new contact's last name:"
      lastname = gets.chomp
      puts "Please enter the new contact's email:"
      email = gets.chomp
      Contact.create(first_name: firstname, last_name: lastname, email: email)
      puts "Contact added!"
    when :list
      Contact.all do
        puts "#{contact.last_name}, #{contact.first_name} // #{contact.email}"
      end
    when :show
      puts "Please enter your search ID:"
      id = gets.chomp
      contact = Contact.find(id)
      puts "#{contact.last_name}, #{contact.first_name} // #{contact.email}"
    when :find
      puts "Would you like to search by:"
      puts "    -f // First Name"
      puts "    -l // Last Name"
      puts "    -e // Email"      
      choice = gets.chomp.to_sym
      case choice
      when :f
        puts "Please enter the first name you would like to search for:"
        contact = Contact.find_by_first_name(gets.chomp)
        puts "#{contact.last_name}, #{contact.first_name} // #{contact.email}"
      when :l
        puts "Please enter the last name you would like to search for:"
        contact = Contact.find_by_last_name(gets.chomp)
        puts "#{contact.last_name}, #{contact.first_name} // #{contact.email}"
      when :e
        puts "Please enter the email you would like to search for:"
        contact = Contact.find_by_email(gets.chomp)
        puts "#{contact.last_name}, #{contact.first_name} // #{contact.email}"
      else
        Application.new
      end
    when :delete
      puts "Please enter the ID of the contact you would like to delete:"
      contact = Contact.find(gets.chomp)
      contact.destroy
      puts "Contact deleted!"
    else
      Application.new
    end
  end
end

Application.new