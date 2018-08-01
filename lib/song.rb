require 'pry'

class Song

  extend reset_all
  extend count
  include Paramable
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
      self.class.all << self
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def artist=(artist)
    @artist = artist
  end

  def self.reset_all
    @@songs.clear
  end


  def self.count
    self.all.count
  end

  def self.all
    @@songs
  end
end
