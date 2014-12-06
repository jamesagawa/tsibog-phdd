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


    @map = showMap
    updateMap

  end

  def init_nav
    #self.title = @restaurant.name
    self.title = ''
  end

  def showMap
    map = MKMapView.alloc.init
    map.frame = [
      [10, 200],
      [300, 250]
    ]
    map.alpha = 1
    map.mapType = ::MKMapTypeStandard
    view.addSubview map
    map
  end

  def updateMap
    @map.annotations.each do |a|
      @map.removeAnnotation(a)
    end

    coordinates = CLLocationCoordinate2DMake(self.restaurant.coordinates[0], self.restaurant.coordinates[1])
    region      = MKCoordinateRegionMake(coordinates, MKCoordinateSpanMake(0.01, 0.01))
    @map.setRegion region
    @annotation = MapAnnotation.new(self.restaurant.coordinates[0], self.restaurant.coordinates[1], 'In here')
    @map.addAnnotation(@annotation)
    @map.alpha = 1
  end

end

