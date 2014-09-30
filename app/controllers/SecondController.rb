class SecondController < UIViewController

  include GoogleAnalytics

  def viewDidAppear(animated)
    super
    track_pageview("Second")
  end

  def viewDidLoad
    self.view.backgroundColor = UIColor.orangeColor
    self.title = 'Second'
  end

  def goBack
    self.navigationController.popViewControllerAnimated('yes')
  end

end