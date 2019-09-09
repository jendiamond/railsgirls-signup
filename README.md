# Rails Girls Signup

$ `rails new your_app_name --database=postgresql`

* Ruby version: '2.3.0'

* Rails version: '5.0.0'

* Database: Postgres

postgresql 11.3 is already installed
To upgrade to 11.5_1, run `brew upgrade postgresql

* Deployment instructions  
$ `git clone git@github.com:jendiamond/railsgirls_signup.git`  
$ `bundle`  
$ `rake db:create`  
$ `rake db:migrate`

* To run the test suite: `bundle exec rspec`

---
---

### How it was made...

$ `rvm list rubies`

$ `rvm rubies`
```
=* ruby-2.1.4 [ x86_64 ]
   ruby-2.2.1 [ x86_64 ]
   ruby-2.2.2 [ x86_64 ]
   ruby-2.3.0 [ x86_64 ]

# => - current
# =* - current && default
#  * - default
```

---

If Ruby 2.3.0 appears on that list and it is not current than run:

$ `rvm use 2.3.0`

---

If you don't have it in your list:

$ `rvm install ruby 2.3.0`

Then run:

$ `gem install bundler`

---

$ `gem install rails`

---

$ `rails new railsgirls-signup --database=postgresql`

---

+ git init
+ git workflow
+ add remote repo
+ push to remote repo

---

$ `rake db:create`  
$ `rails db:migrate`

---

[Add User scaffold](https://github.com/jendiamond/railsgirls-signup/issues/1)

$ `rails generate scaffold User first_name:string last_name:string email:string phone:string zip_code:string twitter_handle:string github_user_name:string over_21:boolean age:integer operating_system:string workshop:datetime rating:string coach:string pair:string accepted:boolean attended:boolean phase_five_coach:boolean`

---

[Add RSpec & SimpleCov & Pry](https://github.com/jendiamond/railsgirls-signup/issues/6)

---

postgresql
To migrate existing data from a previous major version of PostgreSQL run:
  brew postgresql-upgrade-database

To have launchd start postgresql now and restart at login:
  brew services start postgresql
Or, if you don't want/need a background service you can just run:
  pg_ctl -D /usr/local/var/postgres start
  
