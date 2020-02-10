class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # Song.all.select {|song| song.genre == self}.count
    self.songs.count
  end

  def artist_count
    # Song.all.select {|song| song.genre == self}.map {|song| song.artist}.uniq.count
    self.artists.count
  end

  def all_artist_names
    self.artists.map {|artist| artist.name}
  end
end
