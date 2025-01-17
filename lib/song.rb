class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@count +=1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq        
  end
  
  def self.genre_count
    genre_count = {}     
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1 
      else 
        genre_count[genre] = 1 
      end
    end
    genre_count
    # dup = nil
    # @@genres.each do |genre|           
    #   genre_count[genre] = (genre_count[genre] || 0 ) + 1
    #   if genre_count[genre] > 0
    #     dup = genre 
    #     break
    # end 
    # end
    # return genre_count
  end

  def self.artists
    @@artists.uniq    
  end
  
  def self.artist_count
    artist_count = {} 
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1 
      else 
        artist_count[artist] = 1 
      end
    end
    artist_count
  #   dup = nil 
  #   @@artists.each do |artist|      
  #     artist_count[artist] = (artist_count[artist] || 0) + 1
  #     if artist_count[artist] > 0
  #       dup = genre 
  #       break 
  #   end 
  #   end
  #   return artist_count
  # end
end
end 