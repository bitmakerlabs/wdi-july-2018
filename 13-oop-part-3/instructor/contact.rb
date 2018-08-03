class Contact

  @@contacts = []
  @@next_id = 1000

  def initialize(first_name, last_name, email, notes = 'N/A')
    @first_name = first_name
    @last_name = last_name
    @email = email
    @notes = notes
    @id = nil
  end

  def self.all
    @@contacts
  end

  def self.create(first_name, last_name, email, notes = 'N/A')
    new_contact = self.new(first_name, last_name, email, notes)
    new_contact.save
    return new_contact
  end

  def self.find(id)
    # Iterate through the list of contacts (@@contacts)
    # Find the particular instance with that id
    # Return that instance

    # Left to the student as homework
  end

  # READERS
  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def email
    @email
  end

  def notes
    @notes
  end

  # WRITERS
  def first_name=(first_name)
    @first_name = first_name
  end

  def last_name=(last_name)
    @last_name = last_name
  end

  def email=(email)
    @email = email
  end

  def notes=(notes)
    @notes = notes
  end

  # REGULAR INSTANCE METHODS
  def full_name
    # Mixing and Matching, works!
    "#{ @first_name } #{ last_name }"
  end

  def save
    @id = @@next_id
    @@next_id += 1
    @@contacts << self
  end

end
