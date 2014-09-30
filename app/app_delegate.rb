class AppDelegate

  include GoogleAnalytics

  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    welcomeController = WelcomeController.alloc.init
    @window.rootViewController = UINavigationController.alloc.initWithRootViewController(welcomeController)
    @window.rootViewController.wantsFullScreenLayout = true
    @window.makeKeyAndVisible

    self.configure_google_analytics

    true
  end
end
