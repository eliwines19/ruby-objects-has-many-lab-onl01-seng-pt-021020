class Artist

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @songs = []
  end

  def artist=(artist_name)
    @artist = artist_name
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def song_count
    @songs.length
  end
end
