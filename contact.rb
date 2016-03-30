#Contact Class for CRM Assignment
#Name:  Arnold Redoblado
#Date:  2016-03-29
#Purpose:  Create a contact class that will be used in a CRM application
class Contact

  attr_accessor :id, :first_name, :last_name, :email, :note, :contacts

  @@contacts = []
  @@next_id = 1

  # This method should take four string arguments (first_name, last_name, email, note),
  # and initialize this instance of Contact.
  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = @@next_id

  end

  # This method should take four string rguments (first_name, last_name, email, note),
  # and return the newly created contact
  def self.create( first_name ,last_name ,email, note )
    new_contact = new( first_name ,last_name ,email, note )
    @@contacts << new_contact
    @@next_id += 1
    new_contact

  end

  # This method takes no arguments
  # and return all of the existing contacts in array form
  def self.all
    # Fill this in
        @@contacts
  end

  # This method should take an integer id argument
  # and return the contact that corresponds to the id
  def self.find(id)
    # Fill this in
    #@@contacts[id]
    @@contacts.find { |contact| contact.id == id }

  end

  # This method should take two string arguments (attribute, value)
  # It should look for the contact with the attribute corresponding to the value
  # and return that contact
  #
  # For example
  #   Contact.find_by('first_name', 'Joe')
  # should return the first contact with the first_name of Joe.
  def self.find_by(attribute, value)
    # Fill this in
     @@contacts.select {|contact| contact.send(attribute) == value}



  end

  # This method takes no arguments
  # It should delete all of the contacts from memory
  def self.delete_all
    # Fill this in
    @@contacts = []
  end

  # This method takes no arguments
  # It should return a string that is composed of the first and last names of the contact.
  def full_name
    # Fill this in
    "#{@first_name} #{@last_name}"

  end

  # This method should take two string arguments (attribute, value)
  # It should update the current instance of contact with the new value of the attribute
  #
  # For example:
  #   mary.update('email', 'mary_new_email@gmail.com')
  # should update mary's email address to the new one.
  def update(options, value)
    @first_name = value if options == "first_name"
    @last_name = value if options == "last_name"
    @email = value if options == "email"
    @note = value if options == "note"


  end

  # This method takes no arguments
  # It should delete the current instance of contact from memory
  def delete
    # Fill this in
    @@contacts.delete self

  end

end
