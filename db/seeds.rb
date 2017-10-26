require 'faker'

User.destroy_all
Potluck.destroy_all
Attending.destroy_all

chris = User.create!(email: Faker::Internet.safe_email('Chris'), username: "chris", password: "123456")
river = User.create!(email: Faker::Internet.safe_email('River'), username: "river", password: "123456")
simon = User.create!(email: Faker::Internet.safe_email('Simon'), username: "simon", password: "123456")
christina = User.create!(email: Faker::Internet.safe_email('Christina'), username: "christina", password: "123456")
doc = User.create!(email: Faker::Internet.safe_email('Doc'), username: "doc", password: "123456")

potluck1 = Potluck.create!(name: "Picnic", location: "The Park", starts_at: "May 22, 2019, 2:00pm", hoster_id: chris.id)
potluck2 = Potluck.create!(name: "Family Reunion", location: "Momma's House", starts_at: "May 22, 2018, 3:30pm", hoster_id: simon.id)
potluck3 = Potluck.create!(name: "Birthday Party", location: "Christina's Place", starts_at: "May 22, 2020, 12pm", hoster_id: christina.id)

# Attending.create!()
