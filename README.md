# README

* This app is available at https://r-packageman.herokuapp.com

## Setup
* Install [Ruby] >= 2.6.3
* Install [Rails] >= 5.2
* Install [Node] >= 8.0
* Make sure Bundler is installed. If not, run ```$ gem install bundler```.
* Run ```$ bundle install``` to install all dependencies
* Run ```$ rake db:create db:migrate``` to create the database, run all migrations.
* Run ```$ cd frontend-app && npm install && cd ..``` to install frontend dependencies
* Run ```$ rake start:development``` to start the development server

## Testing
* _Optional_: To run all RSpec tests, type ```$ rspec``` in your console.

### Populating the database with packages
* There are (3) rake tasks for populating the database. ```populate, populate_50, populate_500```
* Run ```$ rake packages:populate_50``` to populate DB with first 50 packages or ```$ rake packages:populate_500``` to populate with 500 packages.


### Fetching Packages API
* To fetch packages, call this endpoint with a GET request <br/> **GET** ```localhost:3000/api/v1/packages```. This will return a JSON of all packages  <br/>


### Environments
* In development, run ```rake start:development``` to setup and start the development server.
* On production, run ```rake start:production``` to setup and start the production server.

### Updating Packages
* To manually update all packages, run ```$ rake packages:indexer_100``` to update first 100 packages or ```$rake packages:indexer``` to update all packages from remote CRON Server.<br/>
* On Production, a scheduler runs on heroku at 12PM daily to update 100 packages.


### Clearing Database
* run ```rake packages:clear``` to clear all packages. This will empty the database.

### Accessing App
* In development, after starting the development server, open your browser to ```localhost:3000```
* Heroku: visit https://r-packageman.herokuapp.com to access app.
