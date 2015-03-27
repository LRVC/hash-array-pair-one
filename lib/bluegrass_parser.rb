require "json"
require "pry"

class BluegrassParser
  def initialize
    @data = JSON.parse(File.open("data/data.json").read)
  end

  def get_artists
    artists = []
    @data.each do |hash|
      artists << hash["artist"]
    end
    artists
  end

  def foggy_mountain_boys_songs
    title_array = []
    @data[0]["songs"].each do |song|
      title_array  << song["title"]
    end
    title_array
  end

  def doc_watson_songs
    title_array = []
    @data[1]["songs"].each do |song|
      title_array  << song["title"]
    end
    title_array
  end

  def the_good_ole_days
    years_array = []
    @data.each do |hash|
      hash["songs"].each do |song|
        years_array << song["year"]
      end
    end
    years_array
  end

  def songs_for_artist(artist)
    title_array = []
    songs = @data.select do |hash|
      hash["artist"] == artist
    end
    songs.each do |song|
      song["songs"].each do |inner_song|
        title_array << inner_song["title"]
      end
    end
    title_array
  end

  def songs_for_year(year)
    title_array = []
    @data.each do |hash|
      hash["songs"].each do |song|
        title_array << song["title"] if song["year"] == year
      end
    end
    title_array
  end
end
