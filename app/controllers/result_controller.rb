class ResultController < UIViewController
  attr_accessor :restaurant

  def viewDidLoad
    super

    rmq.stylesheet = ResultStylesheet
    init_nav
    rmq(self.view).apply_style :root_view

    # Create your UIViews here
    @label_name     = rmq.append(UILabel, :name_label)
    @label_address  = rmq.append(UILabel, :address_label)
    @label_joke     = rmq.append(UILabel, :joke_label)

    @label_name.get.text = @restaurant.name
    @label_address.get.text = @restaurant.address
    @label_joke.get.text = @restaurant.joke




  end

  def init_nav
    #self.title = @restaurant.name
    self.title = ''
  end

end

