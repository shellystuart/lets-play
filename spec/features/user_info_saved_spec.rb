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
    page.find(".Select-arrow").click
    find("div.Select-option", text: item.name).click
    expire_cookies
    sleep(1)
    visit activities_path

    expect(page).to have_content(activity.title)
    expect(page).not_to have_content(activity2.title)
    expect(page).to have_css(".Select-value-label", text: item.name)
  end
end
