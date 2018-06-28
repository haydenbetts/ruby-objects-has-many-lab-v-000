class Song
  attr_accessor :name, :artist

  @@all = []

  def self.song_database
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

end
