require 'rails_helper'

RSpec.describe "Astronaut Index Page" do
  describe "When I visit the astronaut index page" do
    before(:each) do
      @neil = Astronaut.create(name: "Neil Armstrong", age: 37, job: "Commander")
    end

    it "I see a list of astronauts with their name, age, and job" do
      visit '/astronauts'

      expect(page).to have_content("Neil Armstrong")
      expect(page).to have_content("Age: 37")
      expect(page).to have_content("Commander")
    end
  end
end
