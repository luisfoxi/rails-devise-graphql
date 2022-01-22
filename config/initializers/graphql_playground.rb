# # config/initializers/graphql_playground.rb
# # All config options have a default that sould work out of the box
# # References: https://github.com/papodaca/graphql_playground-rails
# GraphqlPlayground::Rails.configure do |config|
#   config.headers = {
#     # 'X-Auth-Header' => ->(view_context) { "123" }
#     'Authorization' => ->(view_context) {"eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoiZTZiYmZiMjgtM2ZjMy00Y2JkLTk3YTctNTUzN2RiMWM4NjIyIiwiZXhwIjoiMTY0MTQ4MzkzOSJ9.dt4RAKo_O4gjgjoN8nM7Akpf1doGk9DNJPyHIASk47A"}
#   }
#   config.title = "Playground"
#   config.csrf = true
#   config.playground_version = "latest"
#   # Ideally the assets would be added to your projects `vendor/assets` directories
#   # config.favicon = "/assets/playground.ico"
#   config.playground_js_url = "/assets/playground.js"
#   config.playground_css_url = "/assets/playground.css"
#   # see: https://github.com/prisma-labs/graphql-playground#settings
#   config.settings = {
#     "editor.polling.enable": false
#   }
# end