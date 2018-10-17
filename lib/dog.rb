class Dog
  attr_accessor :id, :name, :breed
  def initialize(id: nil, name:, breed:)
    @id    = id
    @name  = name
    @breed = breed
  end
  
  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS dogs (
        id INTEGER PRIMARY KEY,
        name TEXT,
        breed TEXT
      )
    SQL
    
    DB[:conn].execute(sql)
  end

  def self.drop_table
    sql = "DROP TABLE IF EXISTS dogs"
    
    DB[:conn].execute(sql)
  end

  def self.new_from_db(row)
    new_dog = Dog.new(id: row[0], name: row[1], breed: row[2])
    
    new_dog
  end


  def self.find_by_name(name)
  #   returns an instance of dog that matches the name from the DB
    sql = "SELECT * FROM dogs WHERE name = ? LIMIT 1"
    
    DB[:conn].execute(sql, name).map {|row| self.new_from_db(row).first}
  end



  # def save
  #   returns an instance of the dog class (FAILED - 6)
  #   saves an instance of the dog class to the database and then sets the given dogs `id` attribut
  # end

  # def self.create
  #   takes in a hash of attributes and uses metaprogramming to create a new dog object. Then it uses the #save method to save that dog to the database (FAILED -8)
  #   returns a new dog objec
  # end
  
  # def self.find_by_id
  #   returns a new dog object by id
  # end
  
  # def self.find_or_create_by
  #   creates an instance of a dog if it does not already exist (FAILED - 11)
  #   when two dogs have the same name and different breed, it returns the correct dog (FAILED - 12)
  #   when creating a new dog with the same name as persisted dogs, it returns the correct dog
  # end
  
  
  
  
  # def update
  #   updates the record associated with a given instance
  # end
end