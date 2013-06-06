require "angularjs-rails/version"

module AngularJS
  module Rails
    class Engine < ::Rails::Engine
      isolate_namespace AngularJS

      initializer :assets, :group => :all do |app|
        app.config.assets.paths << ::Rails.root.join("spec", "angular").to_s
      end

      config.after_initialize do |app|
        app.routes.prepend do
          mount AngularJS::Rails::Engine => '/angular'
        end
      end
    end
  end
end