# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version - ruby 2.3.3p222

* System dependencies -
⋅⋅* RVM, NVM, Homebrew, Rails
⋅⋅* NVM Install: curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
⋅⋅* NVM Install pt 2, 3: nvm install 7.2.0 // nvm alias default 7.2.0
⋅⋅* RVM Install pt 1: gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
⋅⋅* RVM Install pt 2: \curl -sSL https://get.rvm.io | bash -s stable
⋅⋅* Homebrew Install: /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
⋅⋅* Update Homebrew: brew update
⋅⋅* Install Rails: gem install rails --no-ri --no-rdoc


* Configuration -
⋅⋅* brew install postgresql
⋅⋅* brew services start postgresql
⋅⋅* brew install redis
⋅⋅* brew services start redis
⋅⋅* brew install elasticsearch
⋅⋅* brew services start elasticsearch

* Database creation - rails db:create (database = postgresql)

* Database initialization

* How to run the test suite - rails s (localhost:3000)

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
