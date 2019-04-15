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

ERD:
https://imgur.com/LxBbrgu

Wireframe:
https://imgur.com/qAygv1h

This is the repository for all the back-end code for Scribe:
https://github.com/VickyRockingster/scribe-server

Here is the link to the back-end site: https://scribe-back-end.herokuapp.com/

Here is the link to the front-end repository:
https://github.com/VickyRockingster/scribe

And lastly, here is the link to the deployed Scribe site:
https://vickyrockingster.github.io/scribe

Technologies Used:
Axios, CSS3, HTML5, JavaScript, Material UI, React, Ruby on Rails, Postgres,
Sass/SCSS, SQL

Process:
Creating my back-end was relatively simple, just because I only had 2 resources
with a one-to-many relationship between them. It has been a while since I last
created a Rails repo, though, so I had to consult my notes and Google a lot. Even
so, I was able to get my back-end up and running the first day I started my
project.
