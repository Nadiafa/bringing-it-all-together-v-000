  # attributes
  #   has a name and a breed (FAILED - 1)
  #   has an id that defaults to `nil` on initialization (FAILED - 2)
  #   accepts key value pairs as arguments to initialize (FAILED - 3)
  # .create_table
  #   creates the dogs table in the database (FAILED - 4)
  # .drop_table
  #   drops the dogs table from the database (FAILED - 5)
  # #save
  #   returns an instance of the dog class (FAILED - 6)
  #   saves an instance of the dog class to the database and then sets the given dogs `id` attribute (FAILED - 7)
  # .create
  #   takes in a hash of attributes and uses metaprogramming to create a new dog object. Then it uses the #save method to save that dog to the database (FAILED -8)
  #   returns a new dog object (FAILED - 9)
  # .find_by_id
  #   returns a new dog object by id (FAILED - 10)
  # .find_or_create_by
  #   creates an instance of a dog if it does not already exist (FAILED - 11)
  #   when two dogs have the same name and different breed, it returns the correct dog (FAILED - 12)
  #   when creating a new dog with the same name as persisted dogs, it returns the correct dog (FAILED - 13)
  # .new_from_db
  #   creates an instance with corresponding attribute values (FAILED - 14)
  # .find_by_name
  #   returns an instance of dog that matches the name from the DB (FAILED - 15)
  # #update
  #   updates the record associated with a given instance (FAILED - 16)