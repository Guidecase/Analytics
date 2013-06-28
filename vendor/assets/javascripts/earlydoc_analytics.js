(function($) {
  function trackAnalyticsEvent(category, action, label) {
    try {
      _gaq.push(['_trackEvent', category, action, label]);
    } catch(err) {
      // fail silently
    }
  }
  function analyticsSegments(el) {
    $(el).data('analytics').split(".", 3)
  }
  $.fn.trackAnalytics = function() {
    if (this.length === 0) return

    var segments = analyticsSegments(this)
    if (!segments) return

    var category = segments[0]
    var action = segments[1]
    var label = segments[2]

    this.on('click', function() {
      trackAnalyticsEvent(category, action, label)
    })

    this.removeAttr('data-analytics')
  }

  var init = function() {
    $('[data-analytics]').trackAnalytics()
  }
  $(document).ready(init)
  $(window).bind('page:load', init)


  function trackPageChange() {
    _gaq.push(['_trackPageview']);
  }
  $(document).bind('page:change', trackPageChange)  
})(jQuery);
