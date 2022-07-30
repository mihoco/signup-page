# Sign-up form

This is a user sign-up form. This form includes the user's email, firstname, lastname, password, and date of birth. Email has to be unique and the user must be 16 years old or over. After the registration is successful, the user will login automatically and will be taken to a welcome page. 

## Ruby and Rails version
- Ruby 3.0.0
- Rails 7.0.3.1

## To run test
There are two tests.
    - test/models/user_test.rb
    - test/controllers/users_controller_test.rb

    $ bin/rails test 

## How to run the application
1. Make sure Ruby is installed 

    $ ruby -v

    if not installed, following the guide to install: https://www.ruby-lang.org/en/documentation/installation/

2. Make sure Rails is installed

    $ rails -v

    if not installed

    $ gem install rails

3. Clone project from git repository

    $ git clone https://github.com/mihoco/signup-page.git

4. Install all dependencies

    $ bundle install

5. Create database

    $rake db:create

6. Migrate schema

    $ rake db:migrate

2. Start rails server

    $ rails server

3. Open browser and go to the URL 
    http://localhost:3000/signup
