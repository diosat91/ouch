# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'
require 'ruby-progressbar'

progressbar = ProgressBar.create
Team.destroy_all
User.destroy_all
Membership.destroy_all
Injury.destroy_all
Accident.destroy_all
20.times { progressbar.increment }


sports = ["Climbing", "Swimming", "Cycling", "Running", "Skydiving", "Dirtbiking", "Tennis", "Football", "Basketball"]

4.times do
    20.times { progressbar.increment }
    team = Team.create(
        name: Faker::Books::Dune.title,
        description: Faker::Quotes::Shakespeare.king_richard_iii_quote,
        activity: sports.shuffle.first
    )
    20.times do
        name = Faker::TvShows::SiliconValley.character
        user = User.create!(
            first_name: name.split(' ')[0],
            last_name: name.split(' ')[1],
            email: name.split(' ')[0] + Faker::Internet.email,
            password: 'password',
        )
        Membership.create!(user: user, team: team)

        rand(1..5).times do
            injury = Injury.create(
                body_part: [
                    "Right arm", 
                    "Left arm", 
                    "Right leg", 
                    "Left leg", 
                    "Hip", 
                    "Toe", 
                    "Ankle", 
                    "Shin", 
                    "Knee", 
                    "Fingers", 
                    "Hands", 
                    "Wrists", 
                    "Elbows", 
                    "Shoulders", 
                    "Collarbone", 
                    "Chest", 
                    "Ribs", 
                    "Spine", 
                    "Neck", 
                    "Skull", 
                    "Nose", 
                    "Eyes", 
                    "Teeth", 
                    "Ears", 
                    "Skin", 
                    "Genitals"
        ].shuffle.first,
                problem: [
                    "Bruises",
                    "Sprains",
                    "Strains",
                    "Fractures",
                    "Dislocations"
            ].shuffle.first,
                estimated_recovery_time: rand(1..30)

            )
        Accident.create(
            injury: injury,
            user: user,
            description: "It was awful",
            occurrence_date: (Date.today - (rand(1..7).weeks)),
            recovery_date: (Date.today + (rand(1..7).weeks)),
            sport: sports.shuffle.first
        )
        end
    end
end
