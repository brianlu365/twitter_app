# README

This app is hosted on Heroku at https://agile-escarpment-23622.herokuapp.com

Username: `admin`, password: `admin`

Setup:
* ruby 2.4
* postgresql
* run `rails db:setup` to setup and seed db
* default username `admin`, password: `admin`'
* run `bundle exec rspec` to run tests

Design choices:
* Bcrypt for authentication. I want to keep it light. Bcrypt is good enough for this app.
* Twitter gem for Twitter REST client.
* ActiveSupport::Cache::MemoryStore for caching.
