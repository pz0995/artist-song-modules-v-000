Artist.find_by_name("Adele")
#=> #<Artistx038230sdcmdn3872>

module Findable
  def find_by_name(name)
    @@songs.detect{|a| a.name == name}
    @@artists.detect{|a| a.name == name}
  end
end
