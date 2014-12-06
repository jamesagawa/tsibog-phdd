module MyRestaurantsCellStylesheet
  def cell_size
    {w: 320, h: 50}
  end

  def my_restaurants_cell(st)
    st.frame = cell_size
    st.background_color = color.random

    # Style overall view here
  end

  def foo(st)
    st.frame = {top: 0, left: 150, width: 150, height: 100}
    st.view.numberOfLines = 3
  end

end
