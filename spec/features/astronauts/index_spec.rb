require 'rails_helper'

RSpec.describe "Astronaut Index Page" do
  describe "When I visit the astronaut index page" do
    before(:each) do
      @neil = Astronaut.create(name: "Neil Armstrong", age: 37, job: "Commander")
      @buzz = Astronaut.create(name: "Buzz Aldrin", age: 31, job: "Test Pilot")

      @apollo = Mission.create(title: "Apollo 13", time_in_space: "253 days")
      @capricorn = Mission.create(title: "Capricorn 4", time_in_space: "253 days")
      @gemini = Mission.create(title: "Gemini 7", time_in_space: "254 days")
    end

    it "I see a list of astronauts with their name, age, and job" do
      visit '/astronauts'

      expect(page).to have_content("Neil Armstrong")
      expect(page).to have_content("Age: 37")
      expect(page).to have_content("Commander")
    end

    it "I see the average age of all astronauts" do
      visit '/astronauts'

      expect(page).to have_content("Average Age: 34")
    end

    it "I see a list of the space missions in alphabetical order for each astronaut" do
      visit '/astronauts'

      expect(page).to have_content(@apollo.title)
      expect(page).to have_content(@capricorn.title)
      expect(page).to have_content(@gemini.title)
      expect(page). to have_content(@apollo.title @capricorn.title @gemini.title)
    end
  end
end
