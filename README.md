# Marley Spoon Recipes Web App

## Technology used
- **Ruby on Rails** For backend endpoints and data modeling (Rails 6)
- **PostgreSQL:** As Backend Database
- **ReactJS:** As a Frontend Framework

## Requirements

1. PostgreSQL, if you do not have it installed in your computer you can follow the tutorials listed bellow
    - [Windows & OSX](https://www.datacamp.com/community/tutorials/installing-postgresql-windows-macosx?utm_adgroupid=65083631748&utm_adpostion=&utm_targetid=dsa-429603003980&utm_loc_interest_ms=&utm_loc_physical_ms=1012760)
    - [Linux](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-20-04)
2. Ruby 2.7.0, To install it without issues you can use [rvm](https://rvm.io/)

## Running Instructions

1. Run `bundle install` to install dependencies
2. Run `rake db:create` to create the new database
3. Run `rake db:migrate` to run all database migrations
4. Run `rake db:seed` to import data from Contentful
7. Run `rails s` to start the server
8. Navigate to [http://localhost:3000/](http://localhost:3000/) to go to the index page
