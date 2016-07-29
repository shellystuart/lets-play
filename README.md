# Lets Play
[![Code Climate](https://codeclimate.com/github/shellystuart/lets-play/badges/gpa.svg)](https://codeclimate.com/github/shellystuart/lets-play)
[![Coverage Status](https://coveralls.io/repos/github/shellystuart/lets-play/badge.svg?branch=master)](https://coveralls.io/github/shellystuart/lets-play?branch=master)
![Build Status](https://codeship.com/projects/dc6b5f60-2f17-0134-5cab-5ebc8f268022/status?branch=master)

Demo site: http://lets-play-app.herokuapp.com

## About
Let's Play is a web application for parents to quickly find activities to do with their kids using items they already have at home.  This is a "Breakable Toy" project for Launch Academy.

The web app has a Ruby on Rails backend.  The front end is primarily React.js with JQuery, and Foundation CSS for the basic responsive design structure.  I integrated the React-Select control to provide the interactive functionality of the select tool, and the TouchSwipe JQuery plugin to add swipe functionality for mobile devices.  User items are stored via cookie so that parents can return to the site without having to re-enter items or sign up for an account.

I thought of the concept of Let's Play during my time as a stay-at-home parent.  I often wanted to find a fun activity to do with my daughter, but didn't have the time to peruse Pinterest to hunt down an activity that was age-appropriate and didn't require a trip to the store for supplies.

## Features

### Select Items

Select items that you have at home using the React-Select component.  The item list is database-driven.  Items can be selected by scrolling through the item list or by typing, which filters the list.

User items are stored via cookie as they are selected.

### Optional Filtering

Filter activities by whether they are indoor or outdoor.

### View Activities

The activities list is updated as items and filters are added.  Results are shown accordion-style, with details available by clicking on the title of the activity.

### Mobile View

The app is optimized for mobile devices.  The React-Select tool and filters are off-canvas on small mobile screens, with the option to click a button or swipe right to access.

## Download
```
git clone https://github.com/shellystuart/lets-play.git
cd lets-play
bundle install
rake db:create db:migrate db:seed
npm install
npm start
```
(Then in a separate tab, run `rails s` to start the server.)
