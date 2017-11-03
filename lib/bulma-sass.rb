require "bulma/sass/version"

module Bulma
  module Sass
    class << self
      def load!
        if defined?(::Rails)
          require "bulma/sass/engine"
        elsif defined?(::Sprockets)
          Sprockets.append_path(stylesheets_path)
        end
        configure_sass
      end

      # Paths
      def gem_path
        @gem_path ||= File.expand_path('..', File.dirname(__FILE__))
      end

      def templates_path
        File.join(gem_path, 'templates')
      end

      def assets_path
        @assets_path ||= File.join(gem_path, 'app', 'assets')
      end

      def stylesheets_path
        File.join(assets_path, 'stylesheets')
      end

      def configure_sass
        require 'sass'
        ::Sass.load_paths << stylesheets_path
      end

    end
  end
end
Bulma::Sass.load!
