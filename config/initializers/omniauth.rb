OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "293922064132612", "821e9bbec5b0854a4ab259e4bec571f6"
end