Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :developer unless Rails.env.production?
  provider :twitter, 'DyyNcKBeRmRdpIHVUPD3UjF0X', 'GiQ6GTREf2ZOohE6lDCFCnqL6fqF64r0y5XOIuo5sEEGXHgLwM'

  # OmniAuth.config.on_failure = Proc.new { |env|
  #   OmniAuth::FailureEndpoint.new(env).redirect_to_failure
  # }

end
