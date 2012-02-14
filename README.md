Battle Ready Rails
==================

Battle Ready Rails is a Ruby on Rails project for rapid prototyping, development, and deployment of Rails apps.

It supports Rails 3.1+

Platform
--------

Developing a Rails web app can be a complex process involving many decisions and tradeoffs. This project presents a relatively sane default configuration for deployment to Heroku.

It is inspired by, and heavily based on the work of Michael Hartl and his excellent Rails Tutorial: http://ruby.railstutorial.org

The development environment matches as closely as possible the Heroku production environment, and comprises the following:

* pg
* thin
* gravatar_image_tag
* jquery

Development:

* Annotate (for automatic annotation of model code)

Testing:

* RSpec
* Spork
* Capybara
* Factory Girl

Asset pipeline:

* Sass
* Coffeescript
* Uglifier

Usage
-----

In a Nutshell:
 
* Fork from Git repo
* Setup pg locally for development
* Setup & deploy to Heroku

More detail to be added to this section at a later date.

Authors
-------

**David Haynes**

+ http://machindoapps.com
+ http://github.com/drhaynes

License
-------

Licensed under the Apache License, Version 2.0: http://www.apache.org/licenses/LICENSE-2.0

