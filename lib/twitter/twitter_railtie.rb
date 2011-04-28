module Twitter

  class Railtie < Rails::Railtie

    root_path = File.expand_path(File.join(File.dirname(__FILE__), '../..'))
    generators do
          require File.join(root_path, 'lib/generators/twitter_config/twitter_config_generator')
    end

  end

end
