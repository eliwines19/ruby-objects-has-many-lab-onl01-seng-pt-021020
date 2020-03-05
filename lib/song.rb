class Song

  @@all = []

  def initialize(name)
    @name = name
    @@all << name
  end

  def all
    @@all
  end
end
