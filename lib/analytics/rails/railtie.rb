require 'rails/railtie'

module Analytics
  class Railtie < Rails::Railtie
    initializer 'analytics.load_static_assets' do |app|
      app.middleware.use ::ActionDispatch::Static, "#{Analytics.root}/vendor"
    end

    initializer "analytics.view_helpers" do
      ActionView::Base.send :include, ActionView::Helpers::Analytics::AnalyticsHelper
    end   
  end
end