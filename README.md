# SimpleReddit

This is a Iron Yard project for the June 2016 Indianapolis Cohort.

Learning Objectives
- Be able to use forms in Rails
- Be able to add custom routes to resources

Performance Objectives
- Data Modeling
- Heroku

Deliverables
- A rails app repo with a functioning db/seed.rb
- A live Heroku instance
- Submit a link to the repo and include a link to the public Heroku site in the
comments area

Explorer Mode
- A simple, naive, implementation of Reddit
- Create user-generated news links, votes promote stories to the front page
- Each Link should have many Votes associated with it
- The homepage should order by the most number of Votes
- Clicking on a link should create a positive vote and send the user to the
link in question
- Click on a vote link or button should also create a positive vote
- Display the number of votes next to the link title, the link title will be
linked (and eventually end up at the url of the link clicked), and an optional
summary of the link
- Scaffold is fine
