require "spec_helper"
require "a_hash_is_just_a_hash"

describe AHashIsJustAHash do
  let(:a_hash_is_just_a_hash) { AHashIsJustAHash.new }
  describe "#name" do
    it "returns the name" do
      expect(a_hash_is_just_a_hash.name).to eq "Adventurous Andrew"
    end
  end

  describe "#hobbies" do
    it "returns the hobbies as an array" do
      expect(a_hash_is_just_a_hash.hobbies).to eq(["Bonfires", "Brunch", "Banana Bread", "Boats"])
    end
  end

  describe "#jobs" do
    it "returns the jobs as an array of hashes" do
      expect(a_hash_is_just_a_hash.jobs).to eq([
        {
          "title": "Misty Mountain Hopper",
          "responsibilities": [
            "Hopping Mountains",
            "Making Cheese"
          ]
        },
        {
          "title": "Pilgrim",
          "responsibilities": [
            "Walking",
            "Eating",
            "Drinking Wine"
          ]
        }
      ])
    end
  end

  describe "#hobbies_as_a_string" do
    it "returns the hobbies comma separated as a sentence" do
      expect(a_hash_is_just_a_hash.hobbies_as_a_string).to eq "Bonfires, Brunch, Banana Bread, and Boats"
    end
  end

  describe "#name_and_hobbies" do
    it "returns a proper sentence with the name and list of hobbies" do
      expect(a_hash_is_just_a_hash.name_and_hobbies).to eq "Adventurous Andrew can usually be found building or making Bonfires, Brunch, Banana Bread, and Boats."
    end
  end

  describe "#favorites" do
    it "returns a hash of favorite things" do
      expect(a_hash_is_just_a_hash.favorites).to eq({
        "quotes": [
          "The road is made by walking",
          "Our prime purpose in life is to help others. And if you can't help them, at least don't hurt them",
          "You're only here for a short visit. Don't hurry, don't worry.",
          "Koans"
        ],
        "books": [
          "The Dharma Bums",
          "Siddhartha",
          "The Alchemist"
        ],
        "music": [
          "Anything with a fiddle",
          "Anything with a banjo"
        ],
        "questions": [
          {
            "question": "What if sorrows swim?",
            "answer": "We're gonna need to burn them"
          },
          {
            "question": "What's an instance variable?",
            "answer": "The thing with the @ sign"
          }
        ]
      })
    end
  end

  describe "#favorite_quotes" do
    it "returns an array of favorite quotes" do
      expect(a_hash_is_just_a_hash.favorite_quotes).to eq([
        "The road is made by walking",
        "Our prime purpose in life is to help others. And if you can't help them, at least don't hurt them",
        "You're only here for a short visit. Don't hurry, don't worry.",
        "Koans"
      ])
    end
  end

  describe "#favorite_books" do
    it "returns an array of favorite books" do
      expect(a_hash_is_just_a_hash.favorite_books).to eq([
        "The Dharma Bums",
        "Siddhartha",
        "The Alchemist"
      ])
    end
  end

  describe "#favorite_music" do
    it "returns an array of favorite music" do
      expect(a_hash_is_just_a_hash.favorite_music).to eq([
        "Anything with a fiddle",
        "Anything with a banjo"
      ])
    end
  end

  describe "#questions" do
    it "returns an array of questions and answers" do
      expect(a_hash_is_just_a_hash.questions).to eq([
        {
          "question": "What if sorrows swim?",
          "answer": "We're gonna need to burn them"
        },
        {
          "question": "What's an instance variable?",
          "answer": "The thing with the @ sign"
        }
      ])
    end
  end

  describe "#questions_and_answers" do
    it "returns Q & A's as strings inside of an array" do
      expect(a_hash_is_just_a_hash.questions_and_answers).to eq(["What if sorrows swim? We're gonna need to burn them", "What's an instance variable? The thing with the @ sign"])
    end
  end
end
