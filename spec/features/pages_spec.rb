require 'spec_helper'

feature "Static Pages" do

  scenario "/ should include the application name in its title" do
    visit root_path

    expect(page).to have_title "FRB"
  end

  scenario "/ should include the warm closing text 'Enjoy!'", js: true do
    visit root_path

    expect(page).to have_content "Enjoy!"
  end
end
