require "pry"

class AHashIsJustAHash
  DATA = {
    "name": "Adventurous Andrew",
    "hobbies": [
      "Bonfires",
      "Brunch",
      "Banana Bread",
      "Boats"
    ],
    "jobs": [
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
    ],
    "favorites": {
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
    }
  }

  def initialize
    @data = DATA
  end

  def name
    @data[:name]
  end

  def hobbies
    @data[:hobbies]
  end

  def jobs
    @data[:jobs]
  end

  def hobbies_as_a_string
    last = self.hobbies.pop
    sentence = "#{self.hobbies.join(", ")}, and #{last}"
    self.hobbies.push(last)
    sentence
  end

  def name_and_hobbies
    "#{self.name} can usually be found building or making #{self.hobbies_as_a_string}."
  end

  def favorites
    @data[:favorites]
  end

  def favorite_quotes
    self.favorites[:quotes]
  end

  def favorite_books
    self.favorites[:books]
  end

  def favorite_music
    self.favorites[:music]
  end

  def questions
    self.favorites[:questions]
  end

  def questions_and_answers
    questions_array = []
    self.questions.each do |item|
      questions_array << "#{item[:question]} #{item[:answer]}"
    end
    questions_array
  end
end
