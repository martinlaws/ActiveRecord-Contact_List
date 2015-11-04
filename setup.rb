require 'pry' # in case you want to use binding.pry
require 'active_record'

puts 'Establishing connection to database ...'
ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  database: 'contacts',
  username: 'development',
  password: 'development',
  host: 'localhost',
  port: 5432,
  pool: 5,
  encoding: 'unicode',
  min_messages: 'error'
)
puts 'CONNECTED'
puts "Setting up Database (recreating tables) ..."

ActiveRecord::Schema.define do
  drop_table :contacts if ActiveRecord::Base.connection.table_exists?(:contacts)

  create_table :contacts do |t|
    t.column :first_name, :string
    t.column :last_name, :string
    t.column :email, :string
  end
end

def populate
  require 'faker'

  10.times do
    User.create!(
      name: Faker::Name.name,
      email: Faker::Internet.email,
      admin: (rand(2) > 0)
    )
  end
end