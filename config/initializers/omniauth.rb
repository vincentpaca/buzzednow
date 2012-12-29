Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '279796595475937', '8532c33961b7afbed15c5aeead5fdc8d'
end
