

Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.production?
    provider :facebook, '279796595475937', '8532c33961b7afbed15c5aeead5fdc8d'
  else
    provider :facebook, '499756363401900', 'bf1ce2752ba13e7e7363a3ebf75bda5b'
  end
end
