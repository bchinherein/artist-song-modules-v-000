require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist
  extend Memorable:ClassMethods
  extend Findable
  include Paramble

  @@songs = []

  def initialize
    @@songs << self
  end

  def artist=(artist)
    @artist = artist
  end

  def self.all
    @@songs
  end
end
