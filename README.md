# Movies To Watch

In this project, we will build a database of movies, and eventually allow users to keep track of which movies they want to watch. A movie wishlist, essentially.

## Part 2: Associations

In this assignment, you'll be creating an app that holds `movies` and `directors` and associating those tables together.

### Setting up the database

We'll need two tables:
- A `movies` table that holds `title`(string), `year`(integer), `duration`(integer), `description`(text), `image_url`(string) and `director_id`(integer). The `director_id` column is the **foreign key** that connects the movies table with the directors table.
- A `directors` table that holds `name`(string), `image_url`(string), `bio`(text), `dob`(string)

Starter generators is already loaded into the application, so you may use it if you feel really comfortable  manually CRUDing out resources. Otherwise, start with the following commands to generate the model files, then build out the routes, controllers and views by hand

    rails g model movie title year:integer duration:integer description:text image_url director_id:integer

    rails g model director name image_url bio:text dob

Once you've got the tables set up with names that match up to the specifications above, you can seed the database with:

    rake db:seed

This will auto-prepopulate a bunch of rows for you so that we can get down to work.

### Connecting tables in the app

First, make sure a user can go to a movie's show page and see the name of it's associated director. There are many ways to do this - see if you can find the most elegant.

Next, if you are ready for a challenge, get a list of associated movies to display on a director's show page. You'll need to learn about the `.where` method in Rails.

## Part 3: Instance methods

There are comments in the movies show page, the movie's index page and the director's show page indicating code you should extract into instance methods. Each comment begins with the phrase "TODO"
