# Add any require_relative statements here
require_relative "contact"

class CRM

  def self.run(name)
    # Fill this in
    crm = CRM.new(name)
    crm.main_menu
  end

  def initialize(name)
    # Fill this in

  end

  def main_menu
    # Fill this in
    print_main_menu
    user_selected = gets.chomp
    call_option( user_selected )
  end

  def print_main_menu
    # Fill this in
    puts "[1] Add a new contact"
    puts "[2] Modify an existing contact"
    puts "[3] Delete a contact"
    puts "[4] Display all the contacts"
    puts "[5] Search by attribute"
    puts "[6] Exit"
    puts "Enter a number: "

  end

  def call_option(user_selected)
    # Fill this in
    case user_selected
      when 1 then add_new_contact
      when 2 then modify_existing_contact
      when 3 then delete_contact
      when 4 then display_all_contacts
      when 5 then search_by_attribute
      when 6 then abort("Adios muchachos!")
    end
  end

  def add_new_contact
    # Fill this in
  end

  def modify_existing_contact
    # Fill this in
  end

  def delete_contact
    # Fill this in
  end

  def display_all_contacts
    # Fill this in
    # HINT: Make use of the display_contacts method
  end

  def search_by_attribute
    # Fill this in
    # HINT: Make use of the display_contacts method
  end

  # This method should accept as its argument an array of contacts
  # and display each contact in the contacts array
  def display_contacts(contacts)
    # Fill this in
    # HINT: Make use of this method in the display_all_contacts and search_by_attribute methods
  end

  # Add other methods here, if you need them.

end

# Run the program here (See 'Using a class method`)
