require "rails_helper"

feature "user sees index page with search form" do
  let!(:activity) { FactoryGirl.create(:activity) }
  let!(:activity2) { FactoryGirl.create(:activity) }
  let!(:item) { FactoryGirl.create(:item) }
  let!(:item2) { FactoryGirl.create(:item) }
  let!(:ai1) { FactoryGirl.create(:activityitem, activity_id: activity.id, item_id: item.id) }
  let!(:ai2) { FactoryGirl.create(:activityitem, activity_id: activity2.id, item_id: item.id) }
  let!(:ai3) { FactoryGirl.create(:activityitem, activity_id: activity2.id, item_id: item2.id) }

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

  scenario "user fills out search form and sees results" do
    visit activities_path
    check item.name
    click_button "Search"

    expect(page).to have_content(activity.title)
    expect(page).to have_css("img[src*='#{activity.image}']")
    expect(page).to have_content(activity.description)
    expect(page).to have_content(activity.instructions)
    expect(page).to have_content(activity.url)
    expect(page).not_to have_content(activity2.title)
    expect(page).not_to have_content(activity2.description)
    item_checkbox = find("#cookies_item_ids_#{item.id}")
    expect(item_checkbox).to be_checked
  end
end
