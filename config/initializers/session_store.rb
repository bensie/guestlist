# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_guestlist_session',
  :secret      => '85da14c4f795b13f9f8735683e6812d18e70e1795932ef748405de48b32982bcc87af3a60d9488c3286e21a663de586fc7dbf77a979b1149923ea34b23627232'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
