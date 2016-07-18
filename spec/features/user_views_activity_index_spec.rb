require "rails_helper"

feature "user sees index page with search form" do
  let!(:activity) { FactoryGirl.create(:activity) }
  let!(:activity2) { FactoryGirl.create(:activity) }
  let!(:item) { FactoryGirl.create(:item) }
  let!(:item2) { FactoryGirl.create(:item) }

  scenario "user visits root path and sees search form" do
    visit root_path
    expect(page).to have_content("Welcome! Select some items")
    expect(page).to have_content(item.name)
    expect(page).to have_content(item2.name)
    expect(page).to have_selector("input[value='#{item.id}']")
    expect(page).to have_selector("input[value='#{item2.id}']")
    expect(page).not_to have_content(activity.title)
    expect(page).not_to have_content(activity2.title)
  end
end
