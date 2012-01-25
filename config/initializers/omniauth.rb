Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, TWITTER_KEY, TWITTER_SECRET
  provider :facebook, FACEBOOK_KEY, FACEBOOK_SECRET, {:client_options => {:ssl => {:ca_path => "/etc/ssl/certs"}}}
  provider :identity, on_failed_registration: lambda { |env| IdentitiesController.action(:new).call(env) }
end