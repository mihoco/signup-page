# Sign-up form

This is a user sign-up form. This form includes user's email, firstname, lastname, password, and date of birth. Email have to be unique and user must be 16 years old or over. After registration is succeeded, user will login automatically and will be taken to welcome page. 

## Ruby and Rails version
Ruby 3.0.0
Rails 7.0.3.1

## To run test
There are two tests.
    - test/models/user_test.rb
    - test/controllers/users_controller_test.rb

    $ bin/rails test 

## How to build
1. Install all dependencies

    $ bundle install

2. Start rails server

    $ rails server

3. Open browser and go to the URL below
    http://localhost:3000/signup
