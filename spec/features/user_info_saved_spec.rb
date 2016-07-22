require "rails_helper"

feature "user restarts session and sees persisted results", js: true do
  let!(:activity) { FactoryGirl.create(:activity) }
  let!(:activity2) { FactoryGirl.create(:activity) }
  let!(:item) { FactoryGirl.create(:item) }
  let!(:item2) { FactoryGirl.create(:item) }
  let!(:ai1) { FactoryGirl.create(:activityitem, activity_id: activity.id, item_id: item.id) }
  let!(:ai2) { FactoryGirl.create(:activityitem, activity_id: activity2.id, item_id: item.id) }
  let!(:ai3) { FactoryGirl.create(:activityitem, activity_id: activity2.id, item_id: item2.id) }

  scenario "user sees previously stored item data" do
    visit activities_path
    check item.name
    click_button "Search"
    expire_cookies
    visit activities_path

    expect(page).to have_content(activity.title)
    expect(page).to have_content(activity.description)
    expect(page).not_to have_content(activity2.title)
    expect(page).not_to have_content(activity2.description)
    item_checkbox = find("#cookies_item_ids_#{item.id}")
    expect(item_checkbox).to be_checked
  end
end
