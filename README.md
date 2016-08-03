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

# AJAX-ifying Reddit

## Learning Objectives

* Using JavaScript inside a Rails application
* Understanding (and eschewing) Rails' UJS helpers
* Nested routes

## Deliverables

* A PR to your existing reddit repo called 'ajaxify'
* Said PR submitted to TIYO

## Requirements

### Explorer Mode

* Make your upvote (and downvote if you have them) buttons work without reloading the page. Use an AJAX request for each using Rails UJS and remote: true. Update the vote count when you do so.
* If you don't have one yet, make a link#show page and link to it from the timestamp.
* On that link show page, include a comment box that comments on the link in question.
* The above should post to something like /links/:link_id/comments
* Comments should also have a permalink of their own. Like /links/:link_id/comments/:id Link it from the comment display
