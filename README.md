# About

This is a simple Rails app which demonstrates how one can use dependency injection from https://dry-rb.org/

It's just a basic example using manually created containers, nothing fancy,
but it illustrates how easy it is to use it and still have hot code reloading.

# Setup
* Ruby version `2.6.0`
* Configuration `bundle install`
* No Database is used

# Testing it
There are no tests, just run the server and perform GET reqest to following endpoints.


```
http://localhost:3000/users/transaction\?fail\=true
http://localhost:3000/users/transaction\?fail\=false

http://localhost:3000/users/auto_inject\?fail\=true
http://localhost:3000/users/auto_inject\?fail\=false
```
