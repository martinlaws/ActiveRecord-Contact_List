require_relative './contact'
require_relative './contact_database'

# TODO: Implement command line interaction
# This should be the only file where you use puts and gets
class Application
  def initialize
    ContactDatabase.new
  end
end

Application.new