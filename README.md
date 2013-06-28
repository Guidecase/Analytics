# Earlydoc Analytics

Use
===

Configure your Google Analytics account in the Rails `application.rb` configuration file using the custom `google_analytics_ua` setting

    module Earlydoc
      class Application < Rails::Application
        config.google_analytics_ua = 'UA-XXXXXXXX-0'
      end
    end

Require in your application.js (binds page:change turbolinks support; adds declarative event tracking)

    //= require earlydoc_analytics

Add the Google Analytics (asynchronous) loading script to your application HTML's head using the `google_analytics_script_tag` helper

    <head>
      <%= google_analytics_script_tag %>
    </head>

Event Tracking
==============

Custom events can be tracked by declaring the HTML `data-analytics` attribute on the triggering element with the respective event segements, e.g.

    <div data-analytics="event_category.event_action.event_label>...</div>

Or simply

    <div data-analytics="event_category>...</div>

The data attribute's values are:

1. event_category - required! the global cateogry by which to segement the event.
2. event_action - optional. the action by which to segement the event.
3. event_label - optional. the label to apply to the event.
