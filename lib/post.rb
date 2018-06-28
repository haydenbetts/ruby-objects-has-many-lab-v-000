class Post
  attr_accessor :title, :author

  @@all = []

  def self.post_database
    @@all
  end

  def initialize(name)
    @name = name
    self.class.song_database << self
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

end
