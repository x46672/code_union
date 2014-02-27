Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, '113ae7784be9351d1dda', 'a25d14178ffa4b03ff904c574f0ab499d9965666'
end
