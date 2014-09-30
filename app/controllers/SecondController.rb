class SecondController < UIViewController

  def viewDidLoad
    self.view.backgroundColor = UIColor.orangeColor
    self.title = 'Second'
  end

  def goBack
    self.navigationController.popViewControllerAnimated('yes')
  end

end