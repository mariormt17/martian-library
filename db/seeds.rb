# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

mario = User.create!(
  email: "mario.mancilla@example.com",
  first_name: "Mario",
  last_name: "Mancilla"
)

karen = User.create!(
  email: "karen.vega@example.com",
  first_name: "Karen",
  last_name: "Vega"
)

Item.create!(
  [
    {
      title: "Martian Chronicles",
      description: "Cult book by Ray Bradbury",
      user: mario,
      image_url: "https://upload.wikimedia.org/wikipedia/en/4/45/The-Martian-Chronicles.jpg"
    },
    {
      title: "The Martian",
      description: "Novel by Andy Weir about an astronaut stranded on Mars trying to survive",
      user: mario,
      image_url: "https://upload.wikimedia.org/wikipedia/en/c/c3/The_Martian_2014.jpg"
    },
    {
      title: "Doom",
      description: "A group of Marines is sent to the red planet via an ancient Martian portal called the Ark to deal with an outbreak of a mutagenic virus",
      user: karen,
      image_url: "https://upload.wikimedia.org/wikipedia/en/5/57/Doom_cover_art.jpg"
    },
    {
      title: "Mars Attacks!",
      description: "Earth is invaded by Martians with unbeatable weapons and a cruel sense of humor",
      user: karen,
      image_url: "https://upload.wikimedia.org/wikipedia/en/b/bd/Mars_attacks_ver1.jpg"
    }
  ]
)