Working through the [React + Rails API Authentication](https://youtube.com/playlist?list=PLgYiyoyNPrv_yNp5Pzsx0A3gQ8-tfg66j) course, this repo includes commits of examples of:

* Part 1 - [Ruby on Rails App Creation and Initial Configuration](https://youtu.be/z18zLCAg7UU)
  * Creating the Rails app with `rails new rails-authentication --database=postgresql` - [Commit link](https://github.com/jro31/rails-authentication/commit/97888a643c6f55d6593a258f1e73c69f6ed950a6)
  * Adding the `bcrypt` and `rack-cors` gems - [Commit link](https://github.com/jro31/rails-authentication/commit/2de22d180fd440310747dc1336ca263416fd0e7e)
  * Adding the `cors.rb` initializer file (with typo) - [Commit link](https://github.com/jro31/rails-authentication/commit/9f319d65c9db1bb65c1df9f592f40dc83f577c7e)
    * Fixing the typo in the above commit - [Commit link](https://github.com/jro31/rails-authentication/commit/6c34c80c20352fcffd702017e5a54f19954f2487)
  * Creating the `session_store.rb` initializer file - [Commit link](https://github.com/jro31/rails-authentication/commit/a27d6a327aca4a087b9e629f5dcbbc25d699ae41)
  * Creating a route and rendering some json to check that the app is working - [Commit link](https://github.com/jro31/rails-authentication/commit/82f966ae3034591d6a22eea0311788ee26e18d46)
    * At this point, running `rails s` and going to `http://localhost:3000/` should return `{"status":"It's working"}`
