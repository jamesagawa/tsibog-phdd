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




    tabbar = UITabBarController.alloc.init
    tabbar.viewControllers = [
      main_tab_controller
    ]
    tabbar.selectedIndex = 0
    tabbar.delegate = self
    tabbar

  end


end
