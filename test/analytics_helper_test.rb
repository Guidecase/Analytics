require_relative 'test_helper'

class AnalyticsTest < MiniTest::Unit::TestCase
  include ActionView::Helpers::Analytics::AnalyticsHelper

  def test_that_google_analytics_ua_from_rails_config
    assert_equal Rails.application.config.google_analytics_ua, google_analytics_ua
  end

  def test_that_google_analytics_script_tag_outputs_javascript
    ua = 'testing123'
    script = google_analytics_script_tag(ua)
    
    assert script.include?("script type=\"text/javascript\"")
    assert script.include?(ua)
  end
end