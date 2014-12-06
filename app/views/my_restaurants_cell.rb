class MyRestaurantsCell < UICollectionViewCell
  attr_reader :reused
  attr_accessor :restaurant

  def rmq_build
    rmq(self).apply_style :my_restaurants_cell

    q = rmq(self.contentView)
    # Add your subviews, init stuff here
     @foo = q.append!(UILabel, :foo)
  end

  def prepareForReuse
    @reused = true
  end

  def update_restaurant(restaurant)
    @restaurant = restaurant
    @foo.text = restaurant.name
  end


end
