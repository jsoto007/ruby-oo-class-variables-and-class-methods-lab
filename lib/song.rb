# class Song
#     @@count = 0
#     @@artists = []
#     @@genres = []
#     attr_accessor :new, :name, :artists 

#     def initialize(new = name, artist, genre)
#         @@count += 1
#         @@artists = []
#         @@genres = []
#         @@artists << artist
#         @@genres << genre
#     end 

#     def self.count
#         @@count
#     end 

#     def self.artists
#         @@artists.uniq
#     end 

#     def self.genres
#         @@genres.uniq
#     end 

   
#     def new(name, artis, genre)
#         @name = song_name
#         @artist = artist_name
#         @genre = genre_type
#     end 

#     def name 
#         @name 
#             "hit me baby one more time"
#     end 

#     def artist
#         @artist
#             "Brittany Spears"
#     end 

#     def genre
#         @genre 
#         "pop"
#     end 

#     # def self.artists
#     #     @@artists += @artit

#     # end 



# end 


class Song

    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
  
    def initialize(song_name,artist,genre)
      @name = song_name
      @artist = artist
      @genre = genre
      @@count += 1
      @@artists << artist
      @@genres << genre
    end
  
    def self.count 
      @@count
    end
  
    def self.artists
      @@artists.uniq
    end
  
    def self.genres
      @@genres.uniq
    end
  
    def self.genre_count
      genre_count = Hash.new(0)
      @@genres.each {|genre| genre_count[genre] += 1}
      genre_count
    end
  
    def self.artist_count
      artist_count = Hash.new(0)
      @@artists.each {|artist| artist_count[artist] += 1}
      artist_count
    end
  
  end 