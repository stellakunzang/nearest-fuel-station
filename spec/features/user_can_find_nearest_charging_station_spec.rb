require 'rails_helper'

describe "user can select Turing from drop down on search form" do
  scenario "and see the nearest station" do
    visit '/'

    select "Turing", from: :location

    click_on "Find Nearest Station"

    expect(current_path).to eq('/search')

    within(".name") do
      expect(page).to have_content("Seventeenth Street Plaza")
    end
    within(".address") do
      expect(page).to have_content("1225 17th St.")
    end
    within(".fuel") do
      expect(page).to have_content("ELEC")
    end
    within(".times") do
      expect(page).to have_content("Not Specified")
    end
    within(".distance") do
      expect(page).to have_content("0.1 miles")
    end
    within(".travel_time") do
      expect(page).to have_content("less than a minute")
    end
    within(".directions") do
      expect(page).to have_content("Start out going southeast on 17th St toward Larimer St")
    end
  end
end
