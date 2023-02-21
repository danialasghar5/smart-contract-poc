ZoomRuby.configure do |config|
    config.api_key = Rails.application.credentials.zoom.api_key
    config.api_secret = Rails.application.credentials.zoom.api_secret
end