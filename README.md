Scribe is an idea that I had to enable users to write journal entries online. I
was inspired to create this application because I find journaling to be great
for relaxing and processing at the end of the day.

I initially thought to build the back-end with a Ruby, Rails, ActiveRecord,
MongoDB stack, since users are only meant to have access to their own entries.
I decided to use a relational database instead of MongoDB though. I figured that
even if journal is the intended usage of this app, it wouldn't be out of the
question to use it to take notes, write books, or engage in any other writing
activity that could be shared. I wanted to allow myself more flexibility in
which use cases someone can conceivably use this application.

User Stories:
As an unregistered user, I would like to sign up with email and password.
As a registered user, I would like to sign in with email and password.
As a signed in user, I would like to change password.
As a signed in user, I would like to sign out.
As a signed in user, I would like to create a journal entry.
As a signed in user, I would like to update any of my entries.
As a signed in user, I would like to delete any of my entries.
As a signed in user, I would like to see all of my entries but not other users'.

Wireframe:
https://imgur.com/qAygv1h

ERD:
https://imgur.com/LxBbrgu


This is the repository for all the back-end code for Scribe:
https://github.com/VickyRockingster/scribe-server

This is the link to the back-end site: https://scribe-back-end.herokuapp.com/

This is the link to the front-end repository:
https://github.com/VickyRockingster/scribe

And lastly, this is the link to the deployed Scribe site:
https://vickyrockingster.github.io/scribe

Screenshot of App:
https://imgur.com/cLt3gyn

Technologies Used:
Axios, CSS3, HTML5, JavaScript, Material UI, React.js, Ruby on Rails, PostgreSQL,
Sass/SCSS, SQL

Catalog of Routes for the API:
POST =>	/sign-up	=> user signs up once
POST =>	/sign-in	=> user signs in after being being signed out
PATCH	 => /change password	=> user changes password
DELETE =>	/sign-out	=> user signs out  after being signed in
GET (index) => /entries	=> get all entries that belong to the user
GET (show) => /entries/:id	=> get one entry with this :id
POST =>	/entries	=> create a new entry
PATCH	 => /entries/:id	=> update an entry with this :id
DELETE =>	/entries/:id	=> destroy an entry with this :id

Process:
Creating my back-end was relatively simple, just because I only had 2 resources
with a one-to-many relationship between them. It has been a while since I last
created a Rails repo, though, so I had to consult my notes and Google a lot. Even
so, I was able to get my back-end up and running the first day I started my
project.
In my front-end, though, I ran into a lot more problems. This is the first project
that I finished using React, and there is a steep learning curve going from the
HTML/CSS/JavaScript/jQuery front-end stack to a React framework. Even now, I'm
still getting the knack of styling with React, because it doesn't use standard
CSS/SCSS files in the same way.


Moving Forward:
I would like to do some re-factoring in the front-end so that each view is one
component taking in all the components that need to be shown on that view. That
way, all components on a given view will have a parent component that would allow
them to influence each other, if necessary. I would also like to re-factor the
styling. Right now, it's only functional, not accessible.

Installation:
Download this repo.
Unzip the directory in the command line (unzip ~/Downloads/scribe.zip).
Move into the your new folder and run the command 'git init'. Then open your new
repo.
Delete everything in the README.md and fill with your own content.
Rename your app module in config/application.rb (change ScribeServer).
Rename your project database in config/database.yml (change 'scribe_server').
Install dependencies by running 'bundle install' in the command line.
git add and git commit your changes.
Create a .env for sensitive settings (touch .env).
Generate new development and test secrets (run 'bundle exec rails secret' in the
command line).
Store them in .env with keys SECRET_KEY_BASE_<DEVELOPMENT|TEST> respectively.
In order to make requests to your deployed API, you will need to set
SECRET_KEY_BASE in the environment of the production API (for example, using
heroku config:set or the Heroku dashboard).
In order to make requests from your deployed client application, you will need
to set CLIENT_ORIGIN in the environment of the production API (for example,
heroku config:set CLIENT_ORIGIN=https://<github-username>.github.io).

Setup your database by running these in the command line:
- bin/rails db:drop (if it already exists)
- bin/rails db:create
- bin/rails db:migrate
- bin/rails db:seed
- bin/rails db:examples
Note: Remember to follow the same commands when setting up your deployed database.

Run the API server with the command 'bin/rails server' or 'bundle exec rails
server'
