# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

# db/seeds.rb

Post.create([
  {
    title: "Work: From Finance to QA Professional 🧑‍💻",
    description: "After transitioning from finance to QA, I’ve developed a wide skillset...",
    category: "work",
    content: nil,
    slug: "work-from-finance-to-qa-professional"
  },
  {
    title: "From Coding to Testing: My Skillset 💻🔧",
    description: "As a QA Tester with nearly 2 years of experience, I’ve mastered several key skills...",
    category: "skills",
    content: nil,
    slug: "from-coding-to-testing-my-skillset"
  },
  {
    title: "My Educational Journey in Software Testing 🎓✨",
    description: "From Technology and Finance to Labor Relations and Software Testing, I’ve had an interesting journey...",
    category: "education",
    content: nil,
    slug: "my-educational-journey-in-software-testing"
  }
])


  user = User.where(email: "emmanuelrgeek@gmail.com").first_or_initialize
  user.update!(
    password: "password",
    password_confirmation: "password"
  )

