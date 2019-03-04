# README

![tb7m2nxsvm](https://user-images.githubusercontent.com/4223130/53698233-c0959b00-3dd1-11e9-9c54-cf6d0430da9f.gif)

**Test Spec**
![spec](https://user-images.githubusercontent.com/4223130/53728114-d0f95480-3e69-11e9-845f-f2d0d929e9f6.JPG)

**Steps:**
1. Clone this repo
2. Go to the repo directory
3. Run `bundle install`
4. Run `bundle exec rspec spec` for running tests.
5. `rails s` to run the server and use the app.

**Strategy**
The stategy was simple just to iterate over the standard roman numerals and incrimenting the values with their remainder.
As long as the values are divisible by the fixed roman numerals integer they are in the loop.
Biggest challenge for me was to implement this logic to a working app. The code placement. Thus this is just a small effort to fetch roman numerals of given integer.

The main logic is inside `app/service_objects/find_roman.rb` file.
The spec is inside `app/spec/service_objects/find_roman_spec.rb` file.

**Technical Questions and Answers:** [https://docs.google.com/document/d/1Y8Zy2uZdBu717DT6E1NkOTJyM-t_rpYxzFL2HbnxR0Y/edit?usp=sharing](https://docs.google.com/document/d/1Y8Zy2uZdBu717DT6E1NkOTJyM-t_rpYxzFL2HbnxR0Y/edit?usp=sharing)

*Ruby 2.3.3
*Rails 5.1.6.1
