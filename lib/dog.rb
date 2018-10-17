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
  
  
  
  def save
    # if self.id
    #   self.update
    # else
      sql = "INSERT INTO dogs (name, breed) VALUES (?, ?)"
      
      DB[:conn].execute(sql, self.name, self.breed)
      
      @id = DB[:conn].execute("SELECT last_insert_rowid() FROM dogs")[0][0]
    # end 
    self
  end
  
  
  
  
  def self.create(name:, breed:)
  #   takes in a hash of attributes and uses metaprogramming to create a new dog object. Then it uses the #save method to save that dog to the database
  #   returns a new dog objec
    dog = Dog.new(name, breed)
    dog.save
    
    dog
  end
  







  
  
  # def update
  #   sql = <<-SQL
  #     UPDATE dogs 
  #       SET name = ?, breed = ? 
  #       WHERE id = ?
  #   SQL
    
  #   DB[:conn].execute(sql, self.id, self.name, self.breed)
  # end
  
  
    # def self.new_from_db(row)
  #   new_dog = Dog.new(id: row[0], name: row[1], breed: row[2])
    
  #   new_dog
  # end

  
    # def self.find_by_name(name)
  # #   returns an instance of dog that matches the name from the DB
  #   sql = "SELECT * FROM dogs WHERE name = ? LIMIT 1"
    
  #   DB[:conn].execute(sql, name).map { |row| self.new_from_db(row) }.first
    
  #   # DB[:conn].execute(sql, name).map do |row|
  #   #     self.new_from_db(row)
  #   # end.first
  # end
  
  
  
  


  
  # def self.find_by_id
  #   returns a new dog object by id
  # end
  
  # def self.find_or_create_by
  #   creates an instance of a dog if it does not already exist 
  #   when two dogs have the same name and different breed, it returns the correct dog 
  #   when creating a new dog with the same name as persisted dogs, it returns the correct dog
  # end
  
  
  
  
  
end