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
end
