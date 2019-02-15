# About

Dry-rb provides us with a set of useful gems, yet there seem to be an opinion they are more advanced and are suitable for more complex applications. 
Truth is that they are useful for app of any size and complexity and can help with keeping a maintainable, easy to extend and test codebase.

This repo demonstrates a simple way of using Dependency Injection related gems:

- [dry-auto_inject](https://dry-rb.org/gems/dry-auto_inject)
- [dry-container](https://dry-rb.org/gems/dry-container)
- [dry-transaction](https://dry-rb.org/gems/dry-transaction)

within Rails app.


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

# Generator

Additional generator was proposed:

```
bin/rails generate dry_di NAME
```

which creates `import.rb` and `container.rb` files under `app/services/NAME`:

```
│   └── services
│       ├── NAME
│       │   ├── container.rb
│       │   ├── import.rb
```

Initial draft of dry_di generator has a `skip` option:

```b
in/rails generate dry_di NAME --skip WHAT
```

where `WHAT` can be `import` or `container`