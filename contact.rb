require 'pry'
require 'active_record'

class Contact < ActiveRecord::Base

  attr_accessor :firstname, :lastname, :email

 # TODO - add ID
  def to_s
    "ID ##{@id} // #{@lastname}, #{@firstname} // #{@email}"
  end
 
  # Class Methods
  # class << self
    # def find(term)
    #   @term = term
    #   @match = (@@local_array.select { |row| row.include?(@term) })
    #   @match
    # end
 
    # def all
    #   @@local_array
    # end
    
    # def show(id)
    #   Contact.find(id)
    # end

  # end # ends class << self
end # ends Contact class