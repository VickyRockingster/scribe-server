Scribe is a journaling application that allows users to keep a digital journal. I was inspired to create the application because I find journaling to be great for relaxing and processing at the end of the day.

The Process:
I initially thought to build the back-end with a Rails API and the noSQL database MongoDB. This was meant to be a straightforward CRUD app, so Ruby on Rails, with so much default configuration, was a no-brainer. As for the database,
users are only meant to have access to their own entries. I figured a noSQL database would be better because I was only building out the equivalent of a single one-to-many relationship between users and entries. That would avoid the potential headache of building out complex relationships in a non-relational  database. Using MongoDB would also have the added benefit of better scalability in regards to speed, should I choose to build out more features.

However, I decided to use the relational database PostgreSQL instead. I reasoned that even if journaling is the initial intended usage of this app, it wouldn't be out of the question to use it to take notes, write books, or engage in another shared writing activity. Most notably, this app could be used in a way that a resource could potentially be shared between multiple users. For that reason, I figured re-factoring to build out a many-to-many relatonship between users and another resource would be much simpler in a relational database than a non-relational one, even at a larger scale. Plus, using a relational database had the benefit of working with Rails' default configurations.

The front-end was simpler to decide on, as this was the very first app I decided to build using React.js. React.js is a very different usage of JavaScript than I'd become accustomed to, particularly because I was using a lot of ES6 JavaScript for the first time (e.g. classes, the spread operator, the import key word, and so on). After the first few days of panicking ("I don't understand why there are classes in my JavaScript?!"), I was going through a tutorial on the life cycle methods of a component, and it clicked. I stopped thinking about React.js as something similar to JavaScript and jQuery (because it is NOT that), and started thinking about it like Ruby. Once I started thinking in principles of object-oriented programming, React.js made a lot more sense. Building this project was actually the first time I fully understood what object-oriented programming meant, especially when I was able directly compare it with Rails in the back-end.

Lastly, I struggled with whether I wanted to add Redux to my tech stack. I ran into a bug in which I needed to update the state of one component based on the state of another component, and I couldn't because the components weren't configured to "see" each other's state, and therefore couldn't adjust accordingly. Initially, I decided not to add Redux. This was only because I built this app out to MVP in a four-day period, and the bug showed up less than 24 hours before I had to present the app. Having not yet learned anything about Redux, I was of the strong opinion that Redux was not the best way to fix anything in that time. Now, though, I have time to re-factor, and I wanted to give the Redux question more consideration. I eventually decided not to, because right now this app is meant to be small. With the introduction of classes in ES6, a small app like this one would do fine with the state management offered by a class. However, once I come back to build features geared towards scalability and more use-cases, I think it would be wise to add Redux for state management.

Users can:
sign up with first name, last name, email, and password; and
create, read, update, and delete only their own entries upon sign in

Wireframe:
https://imgur.com/qAygv1h

ERD:
https://imgur.com/LxBbrgu

This is the repository for all the back-end code:
https://github.com/VickyRockingster/scribe-server

This is the repository for all the front-end code:
https://github.com/VickyRockingster/scribe

This is the link for deployed Scribe site:
https://vickyrockingster.github.io/scribe

Technologies used in the front-end:
Axios, CSS3, JavaScript, Jsx, Material UI, React.js, React-router, React-router-dom, Sass/SCSS

Technologies used in the back-end:
Ruby on Rails, PostgreSQL

Catalog of Routes for the API:
POST =>	/sign-up (user signs up once)
POST =>	/sign-in (user signs in after being being signed out)
PATCH	 => /change password (user changes password)
DELETE =>	/sign-out (user signs out  after being signed in)
GET => /entries (get all entries that belong to the user)
GET => /entries/:id (get one entry with this :id)
POST =>	/entries (create a new entry)
PATCH	 => /entries/:id (update an entry with this :id)
DELETE =>	/entries/:id (destroy an entry with this :id)

Moving Forward:
I like this set up in the back-end for journaling. Initially, if I were to change anything, it would be to improve scalability. For example, adding tags to entries so users can search through entries by tag.
After that, I would like to build out many-to-many relationships between users and new resources. This would then allow me to re-configure my front-end to support the following use-cases:
Users can:
choose to create, read, update, and delete only their own journal entries upon sign in
choose to create, read, update, and delete their own or shared notes upon sign in, in which notes are notes for classes
choose to create, read, update, and delete their own or shared chapters upon sign in, in which chapters are chapters of a book-in-progress
choose to create, read, update, and delete shared messages upon sign in, in which messages are blocks of characters sent between two people

Installation:
Download this repo.
Unzip the directory in the command line (unzip ~/Downloads/scribe-server.zip).
Move into the your new folder and run the command 'git init'. Then open your new
repo.
Delete everything in the README.md and fill with your own content.
Rename your app module in config/application.rb (change ScribeServer).
Rename your project database in config/database.yml (change 'scribe_server').
Install dependencies by running 'bundle install' in the command line.
Run 'git add .' and 'git commit -m "Initial Commit"' to save your changes.
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

Set up your database by running these in the command line:
- bin/rails db:drop (if yout database already exists)
- bin/rails db:create
- bin/rails db:migrate
- bin/rails db:seed
- bin/rails db:examples
Note: Remember to follow the same commands when setting up your deployed database.

Run the API server with the command 'bin/rails server' or 'bundle exec rails
server'
