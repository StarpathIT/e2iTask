OmniAuth.config.logger = Rails.logger

# Adding the middle ware to the rails app

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1430902943805634', '046b7f31bf88951335bebe6753b1bf24'
end