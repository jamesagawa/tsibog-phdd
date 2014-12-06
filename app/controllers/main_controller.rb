class MainController < UIViewController

  def viewDidLoad
    super

    # Sets a top of 0 to be below the navigation control, it's best not to do this
    # self.edgesForExtendedLayout = UIRectEdgeNone

    rmq.stylesheet = MainStylesheet
    init_nav
    rmq(self.view).apply_style :root_view

    # Create your UIViews here
    @label_loading = rmq.append(UILabel, :loading_label)
    @button = rmq.append(UIButton, :where_to_button).on(:touch) do |sender|
    load_suggestion
    end
  end

  def init_nav
    self.title = 'Tsibog'
  end

  def load_suggestion
    puts "button tapped"
    @label_loading.get.alpha = 1
  end

end
