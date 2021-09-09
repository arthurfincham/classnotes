![](app/assets/images/cn_logo.png)
![](https://img.shields.io/github/last-commit/arthurfincham/loginapp)
![](https://img.shields.io/github/languages/count/arthurfincham/loginapp)
![](https://img.shields.io/github/languages/code-size/arthurfincham/loginapp)

## :bulb: Overview
One of my hobbies is Brazilian Jiu Jitsu, a martial art which depends on the accumilation of knowledge and skill. A problem, however, is how to keep track of all this knowledge. Enter Classnotes: a simple, lightweight journal to accompany learning. The idea is that after class you can write down what you learned, tag it, and then build a repository of techniques and ideas that can be quickly accessed.
## :eye: Preview 
![](app/assets/gifs/cn_display_gif.gif)
## :hammer: Built with
* [Bootstrap](https://getbootstrap.com) - framework for building responsive sites with extensive components.
* [Animate.css](https://animate.style) - a library of ready-to-use, cross-browser animations for your web projects.
* [Ruby on Rails](https://rubyonrails.org) - server-side web app framework written in Ruby. 
* [Heroku](https://www.heroku.com) - service which allows developers to deploy applications.
## :gem: Key Gems 
* [devise](https://github.com/heartcombo/devise): authentication gem for Rails.  
* [pg](https://github.com/ged/ruby-pg): PostgreSQL gem for Rails.  
* [acts-as-taggable-on](https://github.com/mbleigh/acts-as-taggable-on): gem for tagging models in Rails.
* [awesome_print](https://github.com/awesome-print/awesome_print): very helpful when working with the rails console.  
## Usage
##### Clone the repo
```git clone https://github.com/arthurfincham/loginapp.git```

##### RVM
``` bash
% cd loginapp
% rvm install 2.7.3
% rvm use 2.7.3
```
##### Install gems
``` bash
% bundle install
% bundle exec rails server
```
##### Please note:
The current release is built with [PostgreSQL](https://postgresapp.com) for compatibility with [Heroku](https://www.heroku.com). If you are unfamiliar with Postgres, [SQLite3](https://www.sqlite.org/index.html)* is a great alternative. In the **Gemfile**, change the following line:
``` ruby
gem 'pg'
```
to
``` ruby
gem 'sqlite3'
```
and then run
``` bash
bundle install
```
\* *SQLite3 will not work for deployment with Heroku.*
