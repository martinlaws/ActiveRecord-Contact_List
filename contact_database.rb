require 'pg'
require_relative 'contact'
require 'pry'

class ContactDatabase
  
  class << self
    # def save(contact)
    #   if contact.id
    #     sql = 'UPDATE contacts SET firstname=$1, lastname=$2, email=$3, phone=$4 WHERE id=$5;'
    #     connection.exec_params(sql, [contact.firstname, contact.lastname, contact.email, contact.phone.join("$"), contact.id])
    #   else
    #     sql = 'INSERT INTO contacts (firstname, lastname, email, phone) VALUES ($1, $2, $3, $4) RETURNING id'
    #     result = connection.exec_params(sql, [contact.firstname, contact.lastname, contact.email, contact.phone.join("$")])
    #     contact.id = result[0]["id"].to_i
    #   end
    # end
    
    # def connection
    # PG.connect(
    #   host: 'localhost',
    #   dbname: 'contacts',
    #   user: 'development',
    #   password: 'development'
    # )
    # end

    # def all
    #   connection.exec('SELECT * FROM contacts;') do |results|
    #     results.map do |hash|
    #       Contact.new(hash['id'], hash['firstname'], hash['lastname'], hash['email'], hash['phone'].split("$"))
    #     end
    #   end
    # end

    # def find(id)
    #   results = connection.exec_params('SELECT * FROM contacts WHERE id=$1;', [id])
    #   hash = results[0]
    #   if hash
    #     Contact.new(hash['id'], hash['firstname'], hash['lastname'], hash['email'], hash['phone'].split("$"))
    #   end
    # end

    # def find_by_lastname(lastname)
    #   results = connection.exec_params('SELECT * FROM contacts WHERE lastname=$1;', [lastname])
    #   hash = results[0]
    #   if hash
    #     Contact.new(hash['id'], hash['firstname'], hash['lastname'], hash['email'], hash['phone'].split("$"))
    #   end
    # end

    # def find_by_firstname(firstname)
    #   results = connection.exec_params('SELECT * FROM contacts WHERE firstname=$1;', [firstname])
    #   hash = results[0]
    #   if hash
    #     Contact.new(hash['id'], hash['firstname'], hash['lastname'], hash['email'], hash['phone'].split("$"))
    #   end
    # end

    # def find_by_email(email)
    #   results = connection.exec_params('SELECT * FROM contacts WHERE email=$1;', [email])
    #   hash = results[0]
    #   if hash
    #     Contact.new(hash['id'], hash['firstname'], hash['lastname'], hash['email'], hash['phone'].split("$"))
    #   end
    # end

    # def delete(id)
    #   results = connection.exec_params('DELETE FROM contacts WHERE id=$1;', [id])   
    # end
  end # ends class << self
end #ends class ContactDatabase

