class WelcomeController < UIViewController

  include GoogleAnalytics

  def viewDidAppear(animated)
    super
    track_pageview("Welcome")
  end

  def viewDidLoad
    view.backgroundColor = UIColor.whiteColor
    self.title = "Navigation Example"

    @label = UILabel.new
    @label.text = 'Welcome Controller'
    @label.frame = [[50,50],[250,50]]
    view.addSubview(@label)

    self.navigationItem.rightBarButtonItem = UIBarButtonItem.alloc.initWithBarButtonSystemItem(UIBarButtonSystemItemAdd, target:self, action: 'push_second_controller:')

  end

  def push_second_controller(param)
    @secondController = SecondController.alloc.init
    self.navigationController.pushViewController(@secondController, animated:'YES')
  end

end