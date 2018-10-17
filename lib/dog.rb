class Dog
  attr_accessor :name, :breed, :id 
  def initialize(name:, breed:, id: nil)
    @name  = name
    @breed = breed
    @id    = id
  end
  
  def self.create_table
  #   creates the dogs table in the database
    sql = <<-SQL
    SQL
    
    DB[:conn].execute(sql)
  end
  
  
  
  
  def self.drop_table
  #   drops the dogs table from the databas
  end
  
  
  
  
  
  
  
  def save
  #   returns an instance of the dog class (FAILED - 6)
  #   saves an instance of the dog class to the database and then sets the given dogs `id` attribut
  end
  def self.create
  #   takes in a hash of attributes and uses metaprogramming to create a new dog object. Then it uses the #save method to save that dog to the database (FAILED -8)
  #   returns a new dog objec
  end
  def self.find_by_id
  #   returns a new dog object by id
  end
  def self.find_or_create_by
  #   creates an instance of a dog if it does not already exist (FAILED - 11)
  #   when two dogs have the same name and different breed, it returns the correct dog (FAILED - 12)
  #   when creating a new dog with the same name as persisted dogs, it returns the correct dog
  end
  def self.new_from_db
  #   creates an instance with corresponding attribute values
  end
  def self.find_by_name
  #   returns an instance of dog that matches the name from the DB
  end
  def update
  #   updates the record associated with a given instance
  end