if Rails.env == 'production'
  Rails.application.config.session_store :cookie_store, key: "_authentication_app", domain: "my-backend-app-url.com" # Update this to whatever your URL is
else
  Rails.application.config.session_store :cookie_store, key: "_authentication_app"
end
