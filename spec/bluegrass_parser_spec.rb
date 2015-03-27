require "spec_helper"
require "bluegrass_parser"

describe BluegrassParser do
  let(:bluegrass_parser) { BluegrassParser.new}

  describe "#get_artists" do
    it "returns an array of all artists from the data" do
      expect(bluegrass_parser.get_artists).to eq ["Foggy Mountain Boys", "Doc Watson"]
    end
  end

  describe "#foggy_mountain_boys_songs" do
    it "returns the songs for the Foggy Mountain Boys" do
      expect(bluegrass_parser.foggy_mountain_boys_songs).to eq ["Foggy Mountain Breakdown", "Polka on a Banjo"]
    end
  end

  describe "#doc_watson_songs" do
    it "returns the songs for Doc Wats" do
      expect(bluegrass_parser.doc_watson_songs).to eq ["Bottle of Wine", "Don't Think Twice, It's All Right"]
    end
  end

  describe "#the_good_ole_days" do
    it "returns the dates from all the songs in the data" do
      expect(bluegrass_parser.the_good_ole_days).to eq ["1949", "1961", "1973", "1961"]
    end
  end

  describe "#songs_for_artist" do
    it "returns the songs for the given artist" do
      expect(bluegrass_parser.songs_for_artist("Doc Watson")).to eq ["Bottle of Wine", "Don't Think Twice, It's All Right"]
    end
  end

  describe "#songs_for_year" do
    it "returns songs for a given year" do
      expect(bluegrass_parser.songs_for_year("1961")).to eq ["Polka on a Banjo", "Don't Think Twice, It's All Right"]
    end
  end
end
