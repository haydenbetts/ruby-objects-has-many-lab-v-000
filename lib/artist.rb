require_relative "./song"
require 'pry'

class Artist
    attr_accessor :name, :songs

    @@all_songs = []

  def initialize(name)
    @name = name
    @songs = []
  end

  # ADD SONGS SECTION

  def add_song(song)
    song.artist = self
    self.songs << song
    self.class.add_song_to_database(song)
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    self.songs << song
    self.class.add_song_to_database(song)
  end

  def self.add_song_to_database(song)
    @@all_songs << song
  end

  # CLASS METHODS SECTION

  def self.song_count
    self.class.song_database.length
  end


end
