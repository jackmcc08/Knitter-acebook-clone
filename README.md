# AceBook - Knitter - Team Mugshot
#### Makers Academy - Week 8-9 Group Engineering Challenge

## Live Version:
The app is hosted on Heroku.
- http://knitter-acebook.herokuapp.com/

## Summary
Team Mugshot developed over a two week period this facebook clone - ruby-on-rails web application.

## Developers:
- Lou Reade
- Ralph Bartley
- Sha Cheng
- David
- Nata
- Max
- Will
- Jack

## Techstack
- Frontend Rendering and Backend - Ruby on Rails using Postgresql & AWS (for live version)
- Frontend styling and interaction - HTML, CSS and Javascript (for ajax partial rendering)
- Testing: RSPEC (with gems for rails)
- Linting: Rubocop (with gems for rails and rspec)
- Additional:
  - React - developed a Frontend chat room feature as a demo (thanks Sha!)


## Development Story
- Trello Link - https://trello.com/b/W5iLxKUH/mugshot-acebook-trello
- Website Mocks - https://docs.google.com/presentation/d/1ZJ_ZCYsrrXyMddg4d9DQqP3l_1KN8RT6z8519ccZwBk/edit?usp=sharing
- Domain Model - https://docs.google.com/spreadsheets/d/1wSUAxma1pCMuYnkulIyDUz35_FCYHC7sX2aMejOF94k/edit?usp=sharing

## Current Bugs and Future Improvements
- Live version seems to retain session information
- Develop a react front end
- Implement more ajax routing for friend button, login and logout.
- Implement delete functionality for posts and comments


## To see the code and develop further

First, clone this repository. Then:

```bash
> bundle install
> bin/rails db:create
> bin/rails db:migrate

> bundle exec rspec # Run the tests to ensure it works
> bin/rails server # Start the server at localhost:3000
```

## Troubleshooting

If you don't have Node.js installed yet, you might run into this error when running rspec:

```
ExecJS::RuntimeUnavailable:
  Could not find a JavaScript runtime. See https://github.com/rails/execjs for a list of available runtimes.
 ```

Rails requires a Javascript runtime to work. The easiest way is to install Node by running `brew install node` - and then run `bundle exec rspec` again
