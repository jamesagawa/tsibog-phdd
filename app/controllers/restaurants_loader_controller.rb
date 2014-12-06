class RestaurantsLoaderController < UIViewController

  def viewDidLoad
    super

    rmq.stylesheet = RestaurantsLoaderStylesheet
    rmq(self.view).apply_style :root_view

    rmq.append(UILabel, :loading_label)

    BubbleWrap::HTTP.get("http://localhost:3000/companies.json") do |response|
      restaurants = BubbleWrap::JSON.parse(response.body.to_str)
      open_my_restaurants_controller(restaurants)
    end


  end

  def open_my_restaurants_controller(restaurants)
    controller = MyRestaurantsController.new
    controller.restaurants = restaurants
    self.navigationController.pushViewController(controller, animated: true)
  end

end

