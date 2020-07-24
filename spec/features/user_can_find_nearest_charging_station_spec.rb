require 'rails_helper'

describe "user can select Turing from drop down on search form" do
  scenario "and see the nearest station" do
    visit '/'

    select "Turing", from: :location

    click_on "Find Nearest Station"

    expect(current_path).to eq('/search')

  end
end
