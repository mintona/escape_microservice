### About Escape

### Future Iterations

### Purpose Behind the Build

### Installation

#### Access Locally

**Clone the Sinatra microservice** with:

`git clone git@github.com:mintona/escape_microservice.git`

`cd escape-microservice`

`bundle install`

`rake db:create`





API Keys Necessary:

[Google Places API](https://developers.google.com/places/web-service/intro)

[Mountain Project API](https://www.mountainproject.com/data)

[Hiking Project API](https://www.hikingproject.com/data)

*Gems Used:*

Production:
* sinatra
* pg
* activerecord
* sinatra-activerecord
* rake
* httparty
* json
* dotenv
* fast_jsonapi
* pry

Testing and Development:
* pry
* rspec
* rspec-core
* rack-test
* capybara
* webmock
* vcr
* shoulda-matchers
* database-cleaner-active-record
