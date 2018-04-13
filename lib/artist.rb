require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs
  extend Memorable
  extend Findable
  include Paramble

  @@artists = []

  def initialize
    Super
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
