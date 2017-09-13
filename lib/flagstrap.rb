require "flagstrap/version"

module Flagstrap
  class Engine < ::Rails::Engine
    initializer 'flagstrap.assets' do |app|
      %w(css js).each do |sub|
        app.config.assets.paths << root.join('dist', sub).to_s
      end
    end
  end
end
