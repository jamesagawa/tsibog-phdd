class AppDelegate
  attr_reader :window

  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = build_tabbar
    @window.makeKeyAndVisible
    true
  end

  def build_tabbar
    main_tab_controller = UINavigationController.alloc.initWithRootViewController(
      MainController.alloc.initWithNibName(nil, bundle: nil)
    )
    main_tab_controller.tabBarItem = UITabBarItem.alloc.initWithTitle(
      'Home',
      image: rmq.image.resource('home'), tag: 0
    )

    points_tab_controller = PointsController.alloc.initWithNibName(nil, bundle: nil)
    points_tab_controller.tabBarItem = UITabBarItem.alloc.initWithTitle(
      'My Points',
      image: rmq.image.resource('star'), tag: 0
    )


    my_restaurants_tab_controller = UINavigationController.alloc.initWithRootViewController(
      RestaurantsLoaderController.new
    )
    my_restaurants_tab_controller.tabBarItem = UITabBarItem.alloc.initWithTitle(
      'My Eats',
      image: rmq.image.resource('star'), tag: 0
    )


    tabbar = UITabBarController.alloc.init
    tabbar.viewControllers = [
      main_tab_controller,
      points_tab_controller,
      my_restaurants_tab_controller
    ]
    tabbar.selectedIndex = 0
    tabbar.delegate = self
    tabbar

  end


end
