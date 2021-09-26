## Requirements
1. [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
2. [Ruby on Rails](https://guides.rubyonrails.org/getting_started.html#creating-a-new-rails-project-installing-rails)
3. [postgresql](https://www.postgresql.org/download/)

## Local setup
1. Clone repo
2. `bin/setup` (This will import covid_19_data.csv to the database)
3. `rails s`

## How to use
1. Open your browser and Go to `localhost:3000` or `localhost:3000/top/confirmed`
2. Append `observation_date` (yyyy-mm-dd) or `max_results` to the url params
3. You can also append `.json` to the url for json results e.g. `localhost:3000/top/confirmed.json?max_results=5` 
