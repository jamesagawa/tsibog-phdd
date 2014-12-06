class MyRestaurantsController < UICollectionViewController
  # In app_delegate.rb or wherever you use this controller, just call .new like so:
  #   @window.rootViewController = MyRestaurantsController.new
  #
  # Or if you're adding using it in a navigation controller, do this
  #  main_controller = MyRestaurantsController.new
  #  @window.rootViewController = UINavigationController.alloc.initWithRootViewController(main_controller)
  #
  attr_accessor :restaurants

  MY_RESTAURANTS_CELL_ID = "MyRestaurantsCell"

  def self.new(args = {})
    # Set layout
    layout = UICollectionViewFlowLayout.alloc.init
    self.alloc.initWithCollectionViewLayout(layout)
  end

  def viewDidLoad
    super

    self.title = 'My Eats'
    self.navigationItem.hidesBackButton = true

    rmq.stylesheet = MyRestaurantsControllerStylesheet

    collectionView.tap do |cv|
      cv.registerClass(MyRestaurantsCell, forCellWithReuseIdentifier: MY_RESTAURANTS_CELL_ID)
      cv.delegate = self
      cv.dataSource = self
      cv.allowsSelection = true
      cv.allowsMultipleSelection = false
      rmq(cv).apply_style :collection_view
    end
  end

  def numberOfSectionsInCollectionView(view)
    1
  end

  def collectionView(view, numberOfItemsInSection: section)
    @restaurants.size
  end

  def collectionView(view, cellForItemAtIndexPath: index_path)
    view.dequeueReusableCellWithReuseIdentifier(MY_RESTAURANTS_CELL_ID, forIndexPath: index_path).tap do |cell|
      rmq.build(cell) unless cell.reused

      # Update cell's data here
      cell.update_restaurant( Restaurant.new(@restaurants[index_path.row]) )
    end
  end

  def collectionView(view, didSelectItemAtIndexPath: index_path)
    cell = view.cellForItemAtIndexPath(index_path)
    puts "Selected at section: #{index_path.section}, row: #{index_path.row}"
    open_restaurant_controller( Restaurant.new(@restaurants[index_path.row]) )
  end


  def open_restaurant_controller(restaurant)
    controller = RestaurantController.new
    controller.restaurant = restaurant
    self.navigationController.pushViewController(controller, animated: true)
  end




end
