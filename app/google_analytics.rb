module GoogleAnalytics
  def configure_google_analytics
    # Set Google Analytics Tracking Id
    GAI.sharedInstance.trackerWithTrackingId("UA-XXXXXXXX-X")
    # GAI.sharedInstance.logger.setLogLevel(KGAILogLevelVerbose) if RUBYMOTION_ENV == "development"
    GAI.sharedInstance.setDispatchInterval(30)
    GAI.sharedInstance.setDryRun(false)
  end

  def track_pageview(tracked_view_name)
    tracker = GAI.sharedInstance.defaultTracker
    tracker.set(KGAIScreenName, value:tracked_view_name)
    tracker.send(GAIDictionaryBuilder.createScreenView.build)
  end
end
