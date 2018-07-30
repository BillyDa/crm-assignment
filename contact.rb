

class Contact

  @@contacts = []
  @@id = 1
  # This method should initialize the contact's attributes
  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = @@id
    @@id += 1
  end

  def email
    @email
  end

  def note=(note)
    @note = note
  end

  # This method should call the initializer,
  # store the newly created contact, and then return it
  def self.create(first_name, last_name, email, note)
    new_contact = self.new(first_name, last_name, email, note)
    @@contacts << new_contact
    return new_contact
  end

  # This method should return all of the existing contacts
  def self.all
    return @@contacts
  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(id)
    self.all.each do |contact|
      if contact.id == id
        return contact
      else
        puts "No such contact on file"
      end
    end
  end

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update(attribute, new_info)
      if attribute == "first_name"
        self.first_name = new_info
      elsif attribute == "last_name"
        self.last_name == new_info
      elsif attribute == "email"
        self.email = new_info
      elsif attribute == "note"
        self.note = new_info
      else
        p "ERROR"
      end
    end


  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  def self.find_by(attribute, info)
    if attribute == "first_name"
    @@contacts.each do |contact|
      if contact.first_name == info
        return contact
      end
    end
  elsif attribute == "last_name"
    @@contacts.each do |contact|
      if contact.last_name == info
        return contact
      end
    end
  elsif attribute == "email"
    @@contacts.each do |contact|
      if contact.email == info
        return contact
      end
    end
  elsif attribute == "note"
    @@contacts.each do |contact|
      if contact.note == info
        return contact
      end
    end
  end
end

  # This method should delete all of the contacts
  def self.delete_all
    @@contact = []
  end

  def first_name
    @first_name
  end

  def first_name=(first_name)
    @first_name = first_name
  end

  def last_name
    @last_name
  end

  def last_name=(last_name)
    @last_name = last_name
  end

  def full_name
    return "#{first_name} #{last_name}"
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete
    @@contacts.delete(self)
  end

  # Feel free to add other methods here, if you need them.

end

p Contact.new('Betty', 'Maker', 'bettymakes@gmail.com', 'Loves Pokemon')
contact = Contact.new(
  'Betty',
  'Maker',
  'bettymakes@gmail.com',
  'Loves Pokemon'
)
# p contact.note = "Loves HTML and CSS"
