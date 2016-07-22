require "rails_helper"

feature "user sees index page with search form", js: true do
  let!(:activity) { FactoryGirl.create(:activity) }
  let!(:activity2) { FactoryGirl.create(:activity) }
  let!(:item) { FactoryGirl.create(:item) }
  let!(:item2) { FactoryGirl.create(:item) }
  let!(:ai1) { FactoryGirl.create(:activityitem, activity_id: activity.id, item_id: item.id) }
  let!(:ai2) { FactoryGirl.create(:activityitem, activity_id: activity2.id, item_id: item.id) }
  let!(:ai3) { FactoryGirl.create(:activityitem, activity_id: activity2.id, item_id: item2.id) }

  scenario "user visits root path and sees search form" do
    visit root_path
    page.find(".Select-arrow").click

    expect(page).to have_content("Welcome! Select some items")
    expect(page).to have_content(item.name)
    expect(page).to have_content(item2.name)
    expect(page).not_to have_content(activity.title)
    expect(page).not_to have_content(activity2.title)
  end

  scenario "user fills out search form and sees results" do
    visit activities_path
    page.find(".Select-arrow").click
    find("div.Select-option", text: item.name).click

    expect(page).to have_content(activity.title)
    expect(page).not_to have_css("img[src*='#{activity.image}']")
    expect(page).not_to have_content(activity.description)
    expect(page).not_to have_content(activity.instructions)
    expect(page).not_to have_content(activity.url)
    expect(page).not_to have_content(activity2.title)
    expect(page).to have_css(".Select-value-label", text: item.name)
  end

  scenario "user fills out search form and sees multiple activities" do
    visit activities_path
    page.find(".Select-arrow").click
    find("div.Select-option", text: item.name).click
    sleep(1)
    find("div.Select-option", text: item2.name).click

    expect(page).to have_content(activity.title)
    expect(page).to have_content(activity2.title)
    expect(page).not_to have_content(activity.description)
    expect(page).not_to have_content(activity2.description)
  end

  scenario "user fills out search form and clicks on result to view it" do
    visit activities_path
    page.find(".Select-arrow").click
    find("div.Select-option", text: item.name).click
    sleep(1)
    find("div.Select-option", text: item2.name).click
    click_on activity.title

    expect(page).to have_content(activity.title)
    expect(page).to have_content(activity2.title)
    expect(page).to have_content(activity.description)
    expect(page).to have_css("img[src*='assets/#{activity.image}']")
    expect(page).to have_content(activity.description)
    expect(page).to have_content(activity.instructions)
    expect(page).to have_content(activity.url)
    expect(page).not_to have_content(activity2.description)
  end

  scenario "user clicks on second activity result and sees details" do
    visit activities_path
    page.find(".Select-arrow").click
    find("div.Select-option", text: item.name).click
    sleep(1)
    find("div.Select-option", text: item2.name).click
    click_on activity.title
    click_on activity2.title

    expect(page).to have_content(activity.title)
    expect(page).to have_content(activity2.title)
    expect(page).to have_content(activity2.description)
    expect(page).to have_css("img[src*='assets/#{activity2.image}']")
    expect(page).to have_content(activity2.description)
    expect(page).to have_content(activity2.instructions)
    expect(page).to have_content(activity2.url)
    expect(page).not_to have_content(activity.description)
  end

  scenario "user removes item from list and results change" do
    visit activities_path
    page.find(".Select-arrow").click
    find("div.Select-option", text: item2.name).click
    sleep(1)
    find("div.Select-option", text: item.name).click

    expect(page).to have_content(activity.title)
    expect(page).to have_content(activity2.title)

    first(".Select-value-icon").click

    expect(page).to have_content(activity.title)
    expect(page).not_to have_content(activity2.title)
  end
end
