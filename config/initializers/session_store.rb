# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_forthewin_session',
  :secret      => '060c129ae98954868771f74596f909e4cee418297dd2d6e6c509c411f6213680e5e9e307c6a75add8ac4e3de696fd009a667be72eef04de0da2c9d87f282590e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
