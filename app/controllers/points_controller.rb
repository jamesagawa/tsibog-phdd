class PointsController < UIViewController

  def viewDidLoad
    super

    # Sets a top of 0 to be below the navigation control, it's best not to do this
    # self.edgesForExtendedLayout = UIRectEdgeNone

    rmq.stylesheet = PointsStylesheet
    rmq(self.view).apply_style :root_view

    # Create your UIViews here
    @label_top = rmq.append(UILabel, :top_label)
    @label_point = rmq.append(UILabel, :point_label)

    @label_point.get.text = '1234'
  end
end
