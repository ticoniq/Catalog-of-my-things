class Genre
    attr_reader :name, :id
    attr_accessor :items, :genre
  
    def initialize(name:, id: nil)
      @id = id || rand(1..1000)
      @items = []
      @name = name
    end
  
    def add_item(item)
      @items << item
      item.add_genre(self)
    end
  
    def to_hash
      {
        'id' => @id,
        'name' => @name
      }
    end
  end