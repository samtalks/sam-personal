require 'sqlite3'
require 'pry'


class Dog
  attr_accessor :id, :name, :color

  @@db = SQLite3::Database.new "dogs.db"

  def insert
    sql = "INSERT INTO dogs (name, color) VALUES (?,?)"
    

    @@db.execute(sql, self.name, self.color)

    self.id?i = @@db.last_insert_row_id

    saved!

    self
  end

  def update
    if saved?
      sql = "UPDATE dogs SET name=?, color=? WHERE id=?"

      @@db.execute(sql, self.name, self.color, self.id)
    end
  end

  def save
    if saved?
      update
    else
      insert
    end
  end

  def self.find(id)
    sql = "SELECT * FROM dogs WHERE id=?"

    rows = @@db.execute(sql, id)

    self.new_from_db(rows.first)
  end

  def saved!
    @saved = true
  end

  def saved?
    @saved
  end

  private

  def self.new_from_db(row)
    dog = self.new

    dog.id    = row[0]
    dog.name  = row[1]
    dog.color = row[2]

    dog.saved!

    dog
  end
end

binding.pry