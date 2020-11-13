![Car Quiz Logo](./front-end/logo/isolated-monochrome-black.svg)

A fun quiz that test your car identifying abilities.  

🚗 [Click here](https://carquiz.netlify.app) 🚗 to go to the live build.

# Getting Started 

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

## Prerequisites

You must be running `Ruby 2.6.1` and `Rails 6.0.3.2` . One way to accomplish this is to use [Ruby Version Manger(rvm)](https://rvm.io/rvm/install).

    rvm install "ruby-2.6.1"
    rvm use 2.6.1
    gem install rails -v 6.0.3.2


## Installation 

### Start the Back End 

Fork and clone the repository using your prefered method. 

    $ cd back-end 

Then load all of the dependencies...

    $ bundle install 

Create a development database 

    $ rake db:create 

    $ rake db:seed 

    $ rake db:migrate 

Start local server 

    $ rails server

## Start the Front End 

    Open the `index.html` inside the `front-end` folder. 

# Tech Stack Used 

    - Ruby 2.6.1 
    - Rails 6.0.3.2
    - Bundler 
    - HTML5
    - CSS3
    - w3.css
    - Sqlite - Development Database
    - Postgres - Production Database 
    - Heroku - Deployment Service 

# Contributing

Contributions are always welcome.

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests.

# License

This project is licensed under the [MIT](https://opensource.org/licenses/MIT) License

