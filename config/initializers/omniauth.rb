Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, Rails.application.secrets.omniauth_provider_key, Rails.application.secrets.omniauth_provider_secret,
          scope: 'public_profile, email, user_events',
          display: 'popup',
          image_size: 'normal'
end
