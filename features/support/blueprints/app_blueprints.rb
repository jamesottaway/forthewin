# Blueprints are like fixtures.
# They provide data for testing.
# Unlike fixtures, the data must always be valid.
# Blueprints can be defined like this:

App.blueprint do
  title "Bananajour"
  author "Tim" 
  demo "http://sup" 
  source "http://computer:9331/forthewin.git"
  description "Why hello there"
end

# And then called as App.make

# If you wish to define more than one blueprint for a class you can use named blueprints:
#   App.blueprint(:name) do
#     title "Bananajour"
#   end

# For fields you want re-evaluated per make call, use a block:

#   App.blueprint(:random_title) do
#     title { "title#{rand(100)}"}
#   end