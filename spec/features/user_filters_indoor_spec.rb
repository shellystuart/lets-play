require "rails_helper"

feature "user filters results by indoor/outdoor", js: true do
  let!(:activity) { FactoryGirl.create(:activity) }
  let!(:activity2) { FactoryGirl.create(:activity, indoor: false) }
  let!(:item) { FactoryGirl.create(:item) }
  let!(:item2) { FactoryGirl.create(:item) }
  let!(:ai1) { FactoryGirl.create(:activityitem, activity_id: activity.id, item_id: item.id) }
  let!(:ai2) { FactoryGirl.create(:activityitem, activity_id: activity2.id, item_id: item.id) }
  let!(:ai3) { FactoryGirl.create(:activityitem, activity_id: activity2.id, item_id: item2.id) }

  scenario "user filters results by indoor activities" do
    visit activities_path
    page.find(".Select-arrow").click
    find("div.Select-option", text: item.name).click
    sleep(1)
    find("div.Select-option", text: item2.name).click
    select("Indoor", from: "indoor")

    expect(page).to have_content(activity.title)
    expect(page).not_to have_content(activity2.title)
  end

  scenario "user filters results by outdoor activities" do
    visit activities_path
    page.find(".Select-arrow").click
    find("div.Select-option", text: item.name).click
    sleep(1)
    find("div.Select-option", text: item2.name).click
    select("Outdoor", from: "indoor")

    expect(page).to have_content(activity2.title)
    expect(page).not_to have_content(activity.title)
  end

  scenario "user filters results, then adjusts to show all" do
    visit activities_path
    page.find(".Select-arrow").click
    find("div.Select-option", text: item.name).click
    sleep(1)
    find("div.Select-option", text: item2.name).click
    select("Outdoor", from: "indoor")
    select("Indoor/Outdoor", from: "indoor")

    expect(page).to have_content(activity2.title)
    expect(page).not_to have_content(activity.title)
  end
end
