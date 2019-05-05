require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)


module FreeWifiCafe
  class Application < Rails::Application
    config.i18n.default_locale = :ja
    
    # unless Rails.env.production?
    #   config.web_console.whitelisted_ips = '106.171.53.249'
    # end
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
