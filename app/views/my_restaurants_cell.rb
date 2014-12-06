class MyRestaurantsCell < UICollectionViewCell
  attr_reader :reused
  attr_accessor :restaurant

  def rmq_build
    rmq(self).apply_style :my_restaurants_cell

    q = rmq(self.contentView)
    # Add your subviews, init stuff here
     @foo = q.append!(UILabel, :foo)
     @more_info = q.append!(UILabel, :more_info)
  end

  def prepareForReuse
    @reused = true
  end

  def update_restaurant(restaurant)
    @restaurant = restaurant
    @foo.text = restaurant.name
    @more_info.text = restaurant.address
  end


end
