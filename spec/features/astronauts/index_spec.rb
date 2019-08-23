require 'rails_helper'

RSpec.describe "Astronaut Index Page" do
  describe "When I visit the astronaut index page" do
    before(:each) do
      @neil = Astronaut.create(name: "Neil Armstrong", age: 37, job: "Commander")
      @buzz = Astronaut.create(name: "Buzz Aldrin", age: 31, job: "Test Pilot")
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

    # As a visitor,
    # When I visit '/astronauts'
    # I see a list of the space missions' in alphabetical order for each astronaut.
    #
    # (e.g "Apollo 13"
    # "Capricorn 4"
    # "Gemini 7")
    it "I see a list of the space missions in alphabetical order for each astronaut" do

      expect(page).to have_content("Apollo 13")
      expect(page).to have_content("Capricorn 4")
      expect(page).to have_content("Capricorn 4")
    end
  end
end
