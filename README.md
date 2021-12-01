The **Rails** repo of the [React + Rails API Authentication](https://youtube.com/playlist?list=PLgYiyoyNPrv_yNp5Pzsx0A3gQ8-tfg66j) course (the React repo can be found [here](https://github.com/jro31/react-auth-app)), it includes commits of examples of:

* Part 1 - [Ruby on Rails App Creation and Initial Configuration](https://youtu.be/z18zLCAg7UU)
  * Creating the Rails app with `rails new rails-authentication --database=postgresql` - [Commit link](https://github.com/jro31/rails-authentication/commit/97888a643c6f55d6593a258f1e73c69f6ed950a6)
  * Adding the `bcrypt` and `rack-cors` gems - [Commit link](https://github.com/jro31/rails-authentication/commit/2de22d180fd440310747dc1336ca263416fd0e7e)
  * Adding the `cors.rb` initializer file (with typo) - [Commit link](https://github.com/jro31/rails-authentication/commit/9f319d65c9db1bb65c1df9f592f40dc83f577c7e)
    * Fixing the typo in the above commit - [Commit link](https://github.com/jro31/rails-authentication/commit/6c34c80c20352fcffd702017e5a54f19954f2487)
  * Creating the `session_store.rb` initializer file - [Commit link](https://github.com/jro31/rails-authentication/commit/a27d6a327aca4a087b9e629f5dcbbc25d699ae41)
  * Creating a route and rendering some json to check that the app is working - [Commit link](https://github.com/jro31/rails-authentication/commit/82f966ae3034591d6a22eea0311788ee26e18d46)
    * At this point, running `rails s` and going to `http://localhost:3000/` should return `{"status":"It's working"}`
* Part 2 - [Building the User Model and Session Controller for the Rails API Authentication App](https://youtu.be/FwfsMv2kSX4)
  * Generating the `User` model and adding `has_secure_password` - [Commit link](https://github.com/jro31/rails-authentication/commit/e169a79327eb43f85e69bd10a973979446edfdde)
    * Generate the `User` model with `rails g model User email password_digest` (then run `rails db:migrate`)
    * Add `has_secure_password` and the email validations to the `User` model
      * At this point you should be able to generate a user in the console with, for example, `User.create!(email: 'z@dev.com', password: 'asdfasdf', password_confirmation: 'asdfasdf')`
        * The `password_digest` field of the generated user should be some random string
        * The `password` and `password_confirmation` fields are expected by Rails because we added `has_secure_password` to the user
  * Creating the sessions controller `create` action - [Commit link](https://github.com/jro31/rails-authentication/commit/2851bef981ecdc4e71adea19a0c2dd64e637cd38)
    * This finds the user and tries to authenticate them
    * If successful, it creates a cookie and returns the user
    * If unsuccessful, it returns a 401
* Part 3 - [Implementing the Registration Controller and Final Authentication Features in Rails](https://youtu.be/_rdNv5ijzrk)
  * Creating the registrations controller `create` action and adding `skip_before_action :verify_authenticity_token` to application controller - [Commit link](https://github.com/jro31/rails-authentication/commit/c4fc8f7c0186789289123aec6333ff9c33d0bcb8)
    * You should at this point (with the server running) be able to run the following commands:
      * To create a session (making sure that the credentials match those of an existing user):
        * `curl --header "Content-Type: application/json" --request POST --data '{"user": { "email": "z@dev.com", "password": "asdfasdf" } }' http://localhost:3000/sessions`
      * To create a user:
        * `curl --header "Content-Type: application/json" --request POST --data '{"user": { "email": "y@dev.com", "password": "12341234", "password_confirmation": "12341234" } }' http://localhost:3000/registrations`
  * Creating the sessions controller `logged_in` and `logout` actions, and adding a `CurrentUserConcern` which sets `@current_user` - [Commit link](https://github.com/jro31/rails-authentication/commit/9f8f14eda8adb1eb0dd3e4c47ac9aa06b6b68d48)
* Part 4 - [Configuring the Rails API Session Store to Work in All Environments](https://youtu.be/1JRdaemJNh4)
  * Update the session store to work in all environments - [Commit link](https://github.com/jro31/rails-authentication/commit/23372589594ae30394320423a4280a118f996ff1)
    * It previously would have only worked in production
