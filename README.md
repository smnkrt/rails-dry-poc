# About

This is a simple Rails app which demonstrates how one can use dependency injection from https://dry-rb.org/

# Proposed solution

It's just a basic example using manually created containers, nothing fancy,
but it illustrates how easy it is to use dry gems (dry-container, dry-auto_inject, dry-transaction) within rails app.

Proposed solution looks like this:

```
├── app
│   ├── controllers
│   │   ├── ...
│   │   └── users_controller.rb
│   ...
│   └── services
│       ├── users_auto_inject
│       │   ├── container.rb
│       │   ├── create.rb
│       │   ├── import.rb
│       │   ├── service.rb
│       │   └── validate.rb
│       └── users_transaction
│           ├── container.rb
│           ├── create.rb
│           ├── service.rb
│           └── validate.rb
```


# Setup
* Ruby version `2.6.0`
* Configuration `bundle install`
* No Database is used


# Testing it
There are no tests, just run the server and perform GET request to following endpoints.

```
http://localhost:3000/users/transaction?fail=true
http://localhost:3000/users/transaction?fail=false

http://localhost:3000/users/auto_inject?fail=true
http://localhost:3000/users/auto_inject?fail=false
```
