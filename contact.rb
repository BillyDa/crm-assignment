gem 'activerecord', '=4.2.7'
require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'crm.sqlite3')


class Contact < ActiveRecord::Base

  field :first_name, as: :string
  field :last_name, as: :string   # limited to 256 characters
  field :email, as: :string
  field :note, as: :text      # can be over 256 characters

  def full_name
    return "#{first_name} #{last_name}"
  end


end


Contact.auto_upgrade!
