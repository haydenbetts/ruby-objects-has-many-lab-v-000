require_relative "./post"
require 'pry'

class Author
    attr_accessor :name, :posts

    @@all_posts = []

  def self.post_database
    @@all_posts
  end

  def initialize(name)
    @name = name
    @posts = []
  end

  # ADD POSTS SECTION

  def add_post(post)
    post.author = self
    self.posts << post
    self.class.add_post_to_database(post)
  end

  def add_post_by_title(name)
    song = Song.new(name)
    song.artist = self
    self.songs << song
    self.class.add_song_to_database(song)
  end

  # CLASS METHODS SECTION

  def self.add_song_to_database(song)
    song_database << song
  end

  def self.song_count
    song_database.length
  end


end
