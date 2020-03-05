class Song

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self

  def self.all
    @@all
  end
end
